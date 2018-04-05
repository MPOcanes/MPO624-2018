pro go
  
;  cdf2idl, '/Users/bem/Downloads/hw3_data.nc'
  cdf2idl, 'hw3_data.nc'
@hw3_data.idl
  NLONS = 144                   ;
  NYEARS = 20                   ;
  NMONS = 12 * NYEARS           ;
  
  latersst = shift(sst, 0, 1)
  
  varnames = ['sst','latersst','slp','uwnd','olr','precip']
  NVARS = n_elements(varnames) ;;; 6

  for ivar1 = 0,NVARS-1 do $
     for ivar2 = 0,NVARS-1 do begin
     
     tall & device, filename='cospec.'+varnames[ivar1]+'.'+varnames[ivar2]+'.ps'
     
;;;; Rename the 2 fields generically
     doit = 'data1 = '+varnames[ivar1]
     err = execute(doit)
     doit = 'data2 = '+varnames[ivar2]
     err = execute(doit)
     
;;;; Now make x and y time series from data1 and data2
     x = reform(data1[80,*]) & xname=varnames[ivar1] ;;;; longitude 200 (160W)
     y = reform(data2[80,*]) & yname=varnames[ivar2] ;;;; longitude 200 (160W)
     
;;; Remove the mean
     x = x - mean(x)
     y = y - mean(y)
     
;;;; Axis arrays for plotting
     freq = findgen(240)
     time = 1982. + findgen(240)/12.
     
     
;;;;;;;;;;;;;;;;;;;;;;; FFT step 
;;; Let's just take positive frequencies from the fft, and
;;; double the power (amplitude x sqrt(2) in other words)
     xhat = (fft(x)) [1:120] *sqrt(2)
     yhat = (fft(y)) [1:120] *sqrt(2)
     freq = freq[1:120]
     
     powX = abs(xhat)^2
     powY = abs(yhat)^2 
     
;;;;;;;;;;;;;;;;;;;;; PLOTS: simple spectra
;;; Plot the raw data and power spectra
     !p.multi=[0,2,6]
     
;;; data
     plot, time, x, tit=xname+' at 160W = x'
     plot, time, y, tit=yname+' at 160W = y'
     
;;; spectra: dP/df vs. f
     plot, freq, powX, xtit='|f| in cycles per 20y', ytit='d(var)/d|f|', xra=[0,50], tit=xname+' spectrum'
     oplot, freq, powX, psym=4, color=50, symsize=0.25
     plot, freq, powY, xtit='|f| in cycles per 20y', ytit='d(var)/d|f|', xra=[0,50], tit=yname+' spectrum'
     oplot, freq, powY, psym=4, color=50, symsize=0.25
     
;;; spectra: cumulative
;     plot, freq, cumulate(powX), xtit='|f| in cycles per 20y', ytit='cum. variance', tit='var(x)='+str(var_n(x)), xra=[0,50]
;     plot, freq, cumulate(powY), xtit='|f| in cycles per 20y', ytit='cum. variance', tit='var(y)='+str(var_n(y)), xra=[0,50]
     plot, freq, cumulate(powX), xtit='|f| in cycles per 20y', ytit='cum. variance', tit='var='+str(variance(x)), xra=[0,50]
     plot, freq, cumulate(powY), xtit='|f| in cycles per 20y', ytit='cum. variance', tit='var='+str(variance(y)), xra=[0,50]
     
;;; spectra: f*dP/df vs. log-f
     plot, freq, freq*powX, xtit='|f| in cycles per 20y', ytit='d(var)/dlogf', xra=[0.5,50], /xlog, tit='vs. freq (log)'
     oplot, freq, freq*powX, psym=4, color=50, symsize=0.25
     plot, freq, freq*powY, xtit='|f| in cycles per 20y', ytit='d(var)/dlogf', xra=[0.5,50], /xlog, tit='vs. freq (log)'
     oplot, freq, freq*powY, psym=4, color=50, symsize=0.25
     
;;; spectra: f*dP/df vs. log-period
     period = 1./freq * 240. ;;; 240 converts from 20 period units to month units
;;; powY[19] = 0 & powY[39] = 0 ; remove annual and semiannual
;;; powX[19] = 0 & powX[39] = 0
     plot, period, freq*powX, xtit='period (mos)', ytit='d(var)/d(logf)', /xlog, tit='vs. period (log)', xra=[1,100]
     oplot, period, freq*powX, psym=4, color=50, symsize=0.25
     plot, period, freq*powY, xtit='period (mos)', ytit='d(var)/d(logf)', /xlog, tit='vs. period (log)', xra=[1,100]
     oplot, period, freq*powY, psym=4, color=50, symsize=0.25
     
;;; spectra: cumulative in period space
;     plot, period, cumulate(powX), xtit='period (mos)', ytit='cum. variance', tit='var='+str(var_n(x)), /xlog
;     plot, period, cumulate(powY), xtit='period (mos)', ytit='cum. variance', tit='var='+str(var_n(y)), /xlog
     plot, period, cumulate(powX), xtit='period (mos)', ytit='cum. variance', tit='var='+str(variance(x)), /xlog, xra=[1,100]
     plot, period, cumulate(powY), xtit='period (mos)', ytit='cum. variance', tit='var='+str(variance(y)), /xlog, xra=[1,100]
     
     
;;;;;;;;;;;;;;;;;;;;;;; COSPECTRUM OR CROSS SPECTRUM
     xyspec = conj(xhat)*yhat
     P = float(xyspec)
     Q = imaginary(xyspec) 
     
;;; Naive coherence
;coh = (P^2 + Q^2) /powX / powY ;;; always 1 for this 
;plot, freq, coh, tit='coh=1 (monochromatic) '+xname+' vs. '+yname, yra=[0,1.05]
     
;;; Rebin coherence by a factor of N
     for ismoo = 1,6 do begin
        
        !p.multi=[0,1,2]
        
;;; use the3 suffix "4" for rebin even though it is rebin factor of ismoo
;;; now for teaching purposes
        P4 = rebin(P, 120/ismoo)
        Q4 = rebin(Q, 120/ismoo)
        powx4 = rebin(powx, 120/ismoo)
        powy4 = rebin(powY, 120/ismoo)
        
        freq4 = rebin(freq, 120/ismoo)
        period4 = 1./freq4 * 240. ;;; 240 converts from 20 period units to month units
        
        coh4 = (P4^2 + Q4^2) /powX4 / powY4 
        phase4 = atan(Q4/P4) *180./!pi ;;; degrees
        
        
;;;; PLOTS
        plot, period4, coh4, tit='coherence rebinned in bands of '+str(ismoo), yra=[0,1.05], /xlog, xtit='period (mos)', xra=[2,120], ytit='coh!U2!N'
        oplot, period4, coh4, psym=4, color=50, symsize=0.25
        
        plot, period4, phase4, yra=[-95,95], /xlog, xtit='period (mos)', xra=[2,120], tit='phase offset between fields', psym=4, $
              ytit=xname+' leads   phase lag (deg)    '+yname+' leads'
        
     endfor                     ; ismoo loop
     psout
     
  endfor                        ; ivars loop
  stop
  
end
