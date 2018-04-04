;;; Do CEOFs of two combined variables (normalized)

pro go
load_ctbl, '~/IDL_PROGRAMS/climsat/color_tables/blueredanom.tbl'

@hw3_data.idl
year = 1982 + (time-1)/12.
latersst = shift(sst, 0, 6)
year = 1982 + (time-1)/12.
NYEARS = 20
NLONS = 144 ;;; spatial dimension m
M = NLONS
NT = 240 ;;; time dimension n
N = NT ;;; time dimension n

lonlon = [lon, lon+360]


varnames = ['sst','latersst','slp','uwnd','olr','precip']
NVARS = n_elements(varnames) ;;; 6

  for ivar1 = 0,NVARS-1 do $
     for ivar2 = 0,NVARS-1 do begin
     fieldname1 = varnames[ivar1] & fieldname2 = varnames[ivar2] 

     tall & device, filename='CEOF.'+varnames[ivar1]+'.'+varnames[ivar2]+'.ps'
     load_ctbl, '~/IDL_PROGRAMS/climsat/color_tables/blueredanom.tbl'
   
;;;; Rename the 2 fields generically
     doit = 'data1 = '+varnames[ivar1]
     err = execute(doit)
     doit = 'data2 = '+varnames[ivar2]
     err = execute(doit)


;;;; Remove annual cycles and normalize decently
;;;;;;;;;;; Remove mean (redundant), and mean annual cycle 
data1 -= rebin(mean(data1,dim=2),m,n) ;;; remove time mean
climdata112 = transpose( total( reform(transpose(data1), 12, NYEARS, NLONS) ,2 )) /NYEARS 
anomdata1 = reform(data1,NLONS,12,NYEARS) ; Declare right sized array initially equal to data1
for iy = 0, NYEARS-1 do anomdata1 (*,*,iy) -= climdata112

data1 = reform(anomdata1,144,240)

;;; Remove mean, and mean annual cycle, of data2
data2 -= rebin(mean(data2,dim=2),m,n) ;;; remove time mean
climdata212 = transpose( total( reform(transpose(data2), 12, NYEARS, NLONS) ,2 )) /NYEARS 
anomdata2 = reform(data2,NLONS,12,NYEARS) ; Declare right sized array initially equal to data2
for iy = 0, NYEARS-1 do anomdata2 (*,*,iy) -= climdata212

data2 = reform(anomdata2,144,240)


;;;;;; Prepare 'array' for analysis: two fields standardized by their
;;;;;; GLOBAL means and standard deviations, appended
;;;; Double m for 2-variable CEOFs
     mm = m*2

     array = [ (data1-mean(data1))/stdev(data1), $
               (data2-mean(data2))/stdev(data2) ]          ;;; FLTARR(288,240) = (m,n) 

;;;;;;;;;;;;;;;;;; DO THE PCOMP
;;; These lines came from IDL documentation

result = PCOMP(double(array), COEFFICIENTS = coefficients, $
   EIGENVALUES=eigenvalues, VARIANCES=variances, /COVARIANCE) ;;; 144 x 240 result 
eigenvectors = coefficients/REBIN(eigenvalues, mm, mm) ;;; EOFs

;;; trim off NaN's that occur if mm > n
w = where(finite(eigenvectors) ne 1)
if (max(w) ge 0) then eigenvectors(w)=0


;;; Print the modes and their variances
PRINT, '     Mode   PercentVariance' & FOR mode=0,4 DO PRINT, mode+1, variances[mode]*100


;;; Plot the first 4 modes
!p.multi=[0,3,4]

for imode = 0,3 do begin
   rescalext = stdev(eigenvectors(0:mm/2-1,imode))
   plot, lon, eigenvectors(0:mm/2-1,imode)/rescalext, xtit='lon', $
         tit='['+fieldname1+','+fieldname2+'] CEOF'+str(imode+1)+' '+str(variances[imode]*100)+' %', yra=[-5,5]
   oplot, lon, eigenvectors(mm/2:*,imode)/rescalext, lines=2, color=250
   hor,0
   plot, year, result(imode,*)*rescalext, xtit='year', tit='PC'+str(imode+1)+' '+str(variances[imode]*100)+' %'

   puremode = array*0
   for ix = 0,n-1 do puremode[*,ix] = eigenvectors(*,imode)*result(imode,ix)
   contour, puremode, lonlon, year, /fill, nlev=23, $
            tit = fieldname1 + '     EOF(x)PC(t)      '+fieldname2
;            tit='EOF'+str(imode+1)+'(x)PC'+str(imode+1)+'(t) ' + $
;            str(variances[imode]*100)+' %'
   ver, 360
endfor


;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Plot original data and reconstructions 
;;; Reconstruct full array

array_reconstruct = result ## eigenvectors
diff = array-array_reconstruct 

levels = min(array) + (max(array)-min(array)) * (findgen(21)/20) ;;; fix levels

!p.multi=[0,2,3]
contour, array, lonlon, year, /fill, levels=levels, tit=fieldname1+'        original        '+fieldname2, $
         xtit=fieldname1+'      longitude (deg)     '+fieldname2
ver, 360
contour, array_reconstruct, lonlon, year, /fill, levels=levels, tit='reconstruction', $
         xtit=fieldname1+'      longitude (deg)     '+fieldname2
ver, 360
;contour, diff, lonlon, year, /fill, nlev=23, tit='difference: '+str(min(diff))+' - '+str(max(diff))

;;; Truncated reconstructions
for truncation = 1, 4 do begin
   trunc = eigenvectors
   trunc[*,truncation:*] = 0.
   array_trunc = result ## trunc

   contour, array_trunc, lonlon, year, /fill, levels=levels, $
            tit='truncation '+str(truncation)+' '+str(total(variances[0:truncation-1])*100)+' %', $
         xtit=fieldname1+'      longitude (deg)     '+fieldname2
   ver, 360
endfor ;;; truncation loop


;contour, array_trunc, lonlon, year, /fill, nlev=23, $ ;levels=levels, $
;         tit='truncation '+str(truncation)+' '+str(total(variances[0:truncation-1])*100)+' %'




;;;;; Show EOFs and covariance matrix - can we unserstand relationship
;;;;;                                   better? 

;;;;;;; DO HUGE CORRELATION ARRAYS
MAXLAG = 24; % out to +/- 24 months
NLAGS = 2*MAXLAG + 1; % 49 lags are considere
lag = -MAXLAG + indgen(NLAGS)

x = array
lagcovxx_temporal = fltarr(mm,mm, NLAGS);

; covxx = matrix_multiply (anomx, transpose(anomx));THIS ONE IS 144x144
; %%% explicit loop to fill the array. Have to trim data within MAXLAG
; of the end of the year series.

NTSTATS = 240-NLAGS
for ilag = 0, NLAGS-1 do begin
   timelag = ilag-MAXLAG
   lagcovxx_temporal(*,*, ilag) = matrix_multiply( x[*, MAXLAG:n-1-MAXLAG], $
                                                   transpose( x[*, MAXLAG+timelag:n-1-MAXLAG+timelag] ))/NTSTATS ;
endfor


;;;; Skip these lag vcorrelations plots
goto, afterplots

levels = (-10 + findgen(21))*3 ;;; -20 to 20 steps of 1

load_ctbl, '~/IDL_PROGRAMS/climsat/color_tables/blueredanom.tbl'
!p.multi = [0,3,1]
contour, x <29.9 >(-29.9), lonlon, year, /fill, levels = levels, tit='olr anomalies', xtit='lon'
ver, lon[[10,40,70,100,130]]

levels = (-10 + findgen(21))*20 ;;; -20 to 20 steps of 1
!p.multi=[8,3,3] 
contour, REFORM(lagcovxx_temporal(*,10,*)), lonlon, lag, /fill, nlev=23, xtit='lon', ytit='lag', levels=levels, $
         tit='covariance with lag'
ver, lon[10] & hor,0
contour, REFORM(lagcovxx_temporal(*,40,*)), lonlon, lag, /fill, nlev=23, xtit='lon', ytit='lag', levels=levels, $
         tit='at various longitudes'
ver, lon[40] & hor,0
!p.multi=[5,3,3] 
contour, REFORM(lagcovxx_temporal(*,70,*)), lonlon, lag, /fill, nlev=23, xtit='lon', ytit='lag', levels=levels
ver, lon[70] & hor,0
contour, REFORM(lagcovxx_temporal(*,100,*)), lonlon, lag, /fill, nlev=23, xtit='lon', ytit='lag', levels=levels
ver, lon[100] & hor,0
!p.multi=[2,3,3] 
contour, REFORM(lagcovxx_temporal(*,130,*)), lonlon, lag, /fill, nlev=23, xtit='lon', ytit='lag', levels=levels
ver, lon[130] & hor,0

;;;; Matrix multiplication type plots: check as a set of longitudes
checklons = (1+indgen(14))*20 ;;; 10, 20, ...140

afterplots:



;;; Check eigenvector status for a couple modes
!p.multi = [0,3,4]

for imode=0,3 do begin

;;; Plot covariance matrix
load_ctbl, '~/IDL_PROGRAMS/climsat/color_tables/blueredanom.tbl'
levels = (-10 + findgen(21))*max(abs(lagcovxx_temporal[*,*,24]))/10.

contour, lagcovxx_temporal[*,*,24], /fill, levels=levels, $
         tit=fieldname1+'     covariance     '+fieldname2, $
         ytit=fieldname1+'     144 lons    '+fieldname2, $
         xtit=fieldname1+'     144 lons    '+fieldname2
ver,mm/2
hor,mm/2


;;; Plot EOF as column vector
plot, reverse(eigenvectors(*,imode))*eigenvalues[imode], findgen(m), $
      tit='EOF'+str(imode+1)+' as column vector', xsty=4, ysty=4
ver,0
hor, mm/2


;;;; Screen covariance array where EOF is big
cov = lagcovxx_temporal[*,*,24]
eof1 = eigenvectors(*,0)*eigenvalues[0]
eof = eigenvectors(*,imode)*eigenvalues[imode]

for i=0,mm-1 do cov[*,i] *= (abs(eof) gt 0.3)
contour, cov, /fill, levels=levels, $
         tit='key parts of covariance'
ver,mm/2
hor,mm/2


endfor ;; imode = 0,1

endfor  ; ivars loop

stop
end
