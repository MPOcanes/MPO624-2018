;;; IDL code related to Matlab code so I can do on laptop

pro go 

;;; Read in an image
filenames = ['AndyAnka.BW.jpg', $
'GATE_GIGALES_180x180km2.jpg', $
'IMG_3022_cyclonic_flowers.jpg', $
'IMG_2022_butterflymandala.jpg', $
'IMG_2024_abstract_fewlargescales.jpg', $
'IMG_2033_oilpainting_multiscale.jpg', $
'IMG_2035_solidcolors_multiscale.jpg', $
'IMG_2043_comic_withbigsquare.jpg', $
'IMG_2047_comic_withfinelines.jpg', $
'IMG_2051_blocks.jpg', $
'IMG_2057_circles_fewsizes.jpg', $
'IMG_2059_skateboards.jpg', $
'IMG_2061_fractal_leafveins.jpg', $
'IMG_2063_fewlargescales_landscape.jpg', $
'IMG_2064_rainsplashes_lightgradient.jpg', $
'IMG_2066_impressionist_landscape.jpg']
NFILES = n_elements(FILENAMES)

;for ifile = 0, NFILES-1 do begin
for ifile = 2,2 do begin
   filename = filenames[ifile]
   read_jpeg, filename, image

; % Now calculate the monochrome luminance by combining the RGB values according to the NTSC standard, 
; % which applies coefficients related to the eye's sensitivity to RGB colors

   BW = reform( 0.2989*image[0,*,*] + 0.5870*image[1,*,*] + 0.1140*image[2,*,*] )

;;; Test if the image is correct: 
   ;tv, image, /true 
   ;loadct, 0 & tv, bw


;;;; Maximize contrast: assign values from 0 to 255 for the image. 
   BW = float( bytscl(BW) ) 
   BW = BW - mean(BW) ;;; Subtract mean so wavenumber 0 doesn't dominate spectrum

;;; Contour is inefficient way to display, but sizes it
;;; standardly so it's easy to use. Guud nuff. Files huge :(
   !p.multi=[0,2,1]
   loadct, 0
   BWlevels = min(BW) + (max(BW)-min(BW)) * (findgen(41)/40)
   contour, BW, /fill, levels = BWlevels

;;;;;;;;;;;;;;;;; FOURIER TRANSFORM
   Ihat = fft(BW, /CENTER) ;;; center only in IDL 8: otherwise shift it by hand by NX/2, NY/2

;;; TEST INVERSE: reconstruction is trivial 
   ;BW2 = fft(Ihat, /INVERSE, /CENTER) ;;; % YES it's identical

;;;;;;;;;;;;;;;;;;; DISPLAYING THE SPECTRUM
;;; Make 1D horiz and vertical k and l (wavenumber) arrays for
;;; centered Ihat array
   s = size(Ihat) 
   NX = s(1) & NY = s(2)
   k = -NX/2 + findgen(NX)
   l = -NY/2 + findgen(NY)
;;; Make 2D wavenumber arrays for filtering uses: k2d, l2d, and total
;;;; wavenumber m2d
   k2d = rebin(k, NX, NY)
   l2d = transpose( rebin(l, NY,NX) )
   m2d = sqrt(k2d^2 + l2d^2) ;;; TOTAL WAVENUMBER

;;; DISPLAY FFT - 4th root to bring out tiny but numerous high wavenumbers
   PSD = abs(Ihat)
   PSDdisplay = sqrt(sqrt(PSD)) ;;; about right to see structure: log is too drastic
   levels = min(PSDdisplay) + (max(PSDdisplay)-min(PSDdisplay))*(findgen(41)/40.)

   loadct, 39
   contour, sqrt(sqrt((PSD))), k, l, /fill, levels=levels, tit='PSD, 4th root colorscale', $
            xtit='hor. wavenumber k', ytit='ver. wavenumber l'
   WRITE_JPEG, 'spec.'+filename, TVRD(/TRUE), /TRUE


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; FILTER AND TRANSFORM BACK TO SEE CONNECTIONS

;;; Filter the PSD array and transform back
;;; Use logical multiplication (masking) to tinker with spectral array
imask=0
;   maskcondition = '(m2d lt 10)' ;;; low pass filter
;   maskcondition = '(m2d lt 30)' ;;; lowish pass filter
   maskcondition = '(m2d ge 10 and m2d lt 30)' ;;; bandpass filter
;   maskcondition = '(m2d ge 10)' ;;; high pass filter
;   maskcondition = '(abs(k2d) gt 2 or abs(m2d) lt 20)' ;;; stripes along axis
;   maskcondition = '(abs(l2d) gt 2 or abs(m2d) lt 20)' ;;; stripes along axis
;   maskcondition = '(k2d ge (-1))' ;;; right half only
;   maskcondition = '(l2d ge (-1))' ;;; top half only
;   maskcondition = '(k2d gt (0) and l2d gt (0))' ;;; upper right quadrant
;   maskcondition = '(k2d lt (2) and l2d lt (2))' ;;; LL quadrant
;   maskcondition = '(k2d * l2d  ge 0)' ;;; UR-LL quadrants
;   maskcondition = '(k2d * l2d  le 0)' ;;; LR-UL quadrants
   imask = imask+1
;;; Apply mask condition                                                                                            
   doit = 'masked = Ihat * '+maskcondition
   print, doit
   err = execute(doit)


   
;;;; Whatever filtering was done, plot results and grab as a JPG file                                               
   loadct, 39
   contour, sqrt(sqrt((abs(masked)))), k, l, /fill, levels=levels, tit='PSD, masked', xtit='k', ytit='l'

   loadct,0
   Ifilt = fft(masked, /INVERSE, /CENTER)
   contour, Ifilt, /fill, levels = BWlevels, tit='Image, filtered: '+maskcondition

   WRITE_JPEG, 'mask'+str(imask)+'.'+filename, TVRD(/true), /true
   
;;; Plot total wavenumber spectrum (log-log plot, to estimate spectral slope)
   plot, m2d >0.5, psd, psym=3, /xlog, /ylog, xtit='total wavenumber m', $
         ytit='variance in each k,l wavenumber bin', tit='spectral slope?'
   loadct, 39
   oplot, m2d >0.5, 10* m2d^(-1), color=100
   oplot, m2d >0.5, 10* m2d^(-2), color=250


;   plot, alog(m2d > 1), m2d*psd, psym=3

endfor ;;; loop over images


stop

end

