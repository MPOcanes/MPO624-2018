;;; I want to demonstrate all uses of SVD. It is quite general. 

pro go
load_ctbl, '~/IDL_PROGRAMS/climsat/color_tables/blueredanom.tbl'

@hw3_data.idl
year = 1982 + (time-1)/12.
NYEARS = 20
NLONS = 144 ;;; spatial dimension m
M = NLONS
NT = 240 ;;; time dimension n
N = NT ;;; time dimension n


;;;;;;;;;;;; DEFINE x and y data arrays

x = sst ;;; FLTARR(144,240) 
y = uwnd ;;; FLTARR(144,240) 

;;; Remove mean, and mean annual cycle (redundant)
x -= rebin(mean(x,dim=2),m,n) ;;; remove time mean
climx12 = transpose( total( reform(transpose(x), 12, NYEARS, NLONS) ,2 )) /NYEARS 
anomx = reform(x,NLONS,12,NYEARS) ; Declare right sized array initially equal to x
for iy = 0, NYEARS-1 do anomx (*,*,iy) -= climx12
anomx = reform(anomx,144,240)

;;; Remove mean, and mean annual cycle, of y
y -= rebin(mean(y,dim=2),m,n) ;;; remove time mean
climy12 = transpose( total( reform(transpose(y), 12, NYEARS, NLONS) ,2 )) /NYEARS 
anomy = reform(y,NLONS,12,NYEARS) ; Declare right sized array initially equal to y
for iy = 0, NYEARS-1 do anomy (*,*,iy) -= climy12
anomy = reform(anomy,144,240)


;;;;;;;;;;; Further normalizations? to get S and P from cookbook

anomx = anomx / stdev(anomx) ;;; global normalization
anomy = anomy / stdev(anomy) ;;; global normalization

S = anomx
P = anomy


;;;;;;;;;;;;; Build a covariance matrix

cov = matrix_multiply (anomx, transpose(anomx))/NT  ; lon x lon (144x144)
sdx = sqrt( total(anomx^2,2)/240. )


;;;;;;;;;;;;;;; Do the SVD. C = U L V' is the notes for it, IDL
;;;;;;;;;;;;;;; doc uses "W" for L, others use S (singular values)

LA_SVD, cov, L, U, V, /DOUBLE


!p.multi = [0,2,4]
load_ctbl, '~/IDL_PROGRAMS/climsat/color_tables/blueredanom.tbl'
levels = (-10 + findgen(21))/10. ;;; -1 to 1 steps of 0.05

contour, anomx, lon, time, /fill, xtit='lon', ytit='time', $
         levels=levels*5, tit='original data'

contour, cov, lon, lon, /fill, levels=levels*1.5, $
         tit='Covariance matrix', xtit='lon',ytit='lon'
contour, sdx#sdx, lon, lon, /fill, levels=levels*1.5, $
         tit='sd(x) # sd(x)', xtit='lon',ytit='lon'
contour, cov/(sdx#sdx), lon, lon, /fill, levels=levels, $
         tit='Correlation matrix', xtit='lon',ytit='lon'

contour, U, /fill, levels=levels, $
         tit="U in U S V'", xtit='lon index',ytit='lon index'
contour, DIAG_MATRIX(w), /fill, levels=levels, $
         tit="S in U S V'", xtit='lon index',ytit='lon index'
contour, V, /fill, levels=levels, $
         tit="V in U S V'", xtit='lon index',ytit='lon index'

;;; Reconstruction FROM DOCUMENTATION EXAMPLE: 

arecon = u ## DIAG_MATRIX(w) ## TRANSPOSE(v)

;;;; Keep only the TRUNC largest singular values
TRUNC = 1
wfiltered = w
wfiltered[TRUNC:*] = 0.0
afiltered = u ## DIAG_MATRIX(wfiltered) ## TRANSPOSE(v)
percentVar = 100*(w^2)/TOTAL(w^2)
PRINT, 'LA_SVD Variance:', TOTAL(percentVar[0:TRUNC-1])

contour, afiltered, lon, lon, /fill, levels=levels, $
         tit=str(TRUNC)+" mode USV' "+str(TOTAL(percentVar[0:TRUNC-1]))+'% of cov', $
         xtit='lon',ytit='lon'

