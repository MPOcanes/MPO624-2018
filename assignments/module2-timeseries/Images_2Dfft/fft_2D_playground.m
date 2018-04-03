b = imread('/Users/bem/Downloads/Untitled.png','png');


%Now calculate the monochrome luminance by combining the RGB values according to the NTSC standard, 
% which applies coefficients related to the eye's sensitivity to RGB colors
I = .2989*b(:,:,1)...
    +.5870*b(:,:,2)...
    +.1140*b(:,:,3);

%Let's make the image an odd number of pixels, and remove the mean. 
[NX,NY] = size(I);
I = I(1:2*fix(NX./2)-1,1:2*fix(NY./2)-1);
I = I - mean(I(:)); % remove global mean value



% Gray scale plot of image array
figure(1); subplot(121); colormap(gray(256)); imagesc(I); colorbar()
xlabel('pixels'); ylabel('pixels');
title('Original Image')

% TRANSFORM
Ihat = fft2(I); % I1 = ifft2(Ihat); % YES it's identical
% To display the fft, shift zero wavenumber to the center for easier viewing
Ihatsh = fftshift(Ihat); 

% Make 1D horiz and vertical wavenumber (k and l) arrays for plot axes
[NX,NY] = size(I);
k = -fix(NX/2):1:fix(NX/2);  
l = -fix(NY/2):1:fix(NY/2);  
% Make 2D wavenumber arrays for filtering: kk, ll, and total wavenumber kl
[kk,ll] = meshgrid(l,k); % WHY IS THE ORDER l,k? LIFE TOO SHORT TO CARE
kl = sqrt( kk .^ 2 + ll .^ 2 );

% DISPLAY FFT - use log to bring up small values at high wavenumbers
subplot(122); 
colormap(gray(256)); 
imagesc(k,l,log(abs(Ihatsh)))
title('Fourier spectrum of image')
xlabel('horizontal wavenumber k'); ylabel('l (cycles per image height)');




%%% NOW lets play in fft space, transform back and see what it implies
%%% in image space
%%% Use logical multiplication (masking) to tinker with spectral array

% zero out all total wavenumbers bigger than 10
lowpass = Ihatsh .* (kl < 10); 
figure(2); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(lowpass)))
title('Low pass: Total wavenumbers <10 only')
Ilow = abs( ifft2( ifftshift( lowpass )) );
subplot(122); colormap(gray(256)); image(abs(Ilow)); 
title('resulting filtered image')

% zero out total wavenumbers smaller than 10
hipass = Ihatsh .* (kl > 10); 
figure(3); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(hipass)))
title('High pass: Total wavenumbers >10 only')
Ihi = abs( ifft2( ifftshift( hipass )));
subplot(122); colormap(gray(256)); imagesc(abs(Ihi)); 
title('resulting filtered image')

% include only total wavenumbers 10-20 (band pass)
bandpass = Ihatsh .* (kl >= 10 & kl < 20); 
figure(4); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(bandpass)))
title('Band pass: Total wavenumbers 10-20 only')
Iband = abs(ifft2( ifftshift( bandpass )));
subplot(122); colormap(gray(256)); imagesc(abs(Iband)); 
title('resulting filtered image')

% mask k and l quadrants: SWNE
SWNE = Ihatsh .* ( (kk <=0 & ll>=0) | (kk>=0 & ll<=0)); 
figure(5); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(SWNE)))
title('SW-NE quadrant of the spectrum')
II = abs(ifft2( ifftshift( SWNE )));
subplot(122); colormap(gray(256)); imagesc(abs(II)); 
title('resulting image')

% mask k and l quadrants: NW-SE
NWSE = Ihatsh .* ( (kk >=0 & ll>=0) | (kk<=0 & ll<=0)); 
figure(6); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(NWSE)))
title('NW-SE quadrants of the spectrum')
II = abs(ifft2( ifftshift( NWSE )));
subplot(122); colormap(gray(256)); imagesc(abs(II)); 
title('resulting image')



% Laplacian (second derivative) is also a high pass filter.
% Remember, to differentiate you multiply the transform by i*k or i*l
% Two derivatives is multiplying (weighting the spectrum) by -(kl).^2 
hipass = -Ihatsh .* (kl.^2); 
figure(7); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(hipass)))
title('High pass: Laplacian')
Ihi = abs( ifft2( ifftshift( hipass )));
subplot(122); colormap(gray(256)); imagesc(abs(Ihi)); 
title('resulting filtered image')

% Inverse Laplacian (two integrals) is also a low pass filter.
% Two derivatives is dividing (weighting the spectrum) by -1/(kl).^2 
lopass = -Ihatsh .* 1./ max(kl.^2,0.1); % avoid dividing by zero
figure(8); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(lopass)))
title('Low pass: Inverse Laplacian')
Ilo = abs( ifft2( ifftshift( -lopass )));
subplot(122); colormap(gray(256)); imagesc(abs(Ilo)); 
title('resulting filtered image')





% set all phases to zero (all waves are cosines. It is covariance! Center
% it in middle of area instead of at the edge. 

acov = abs(Ihatsh); % magnitude, retained, phase set to zero
figure(9); subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(acov)))
title('spectrum unchanged: phases set to 0')
II = abs(ifft2( ifftshift( acov )));
subplot(122); colormap(gray(256)); imagesc(fftshift(abs(II).^0.25)); colorbar()
title('result: autocovariance (4th root to see small values)')


% spectrum according to total wavenumber, by Histogram binning.

power = abs(Ihatsh).^2; % this is off by some constant factor

% http://stackoverflow.com/questions/419223/binning-in-matlab
numBins = fix(max(kl));
binEdges = 0:numBins; % integer wavenumbers
[histkl,whichBin] = histc(kl, binEdges);

for i = 1:numBins
    flagBinMembers = (whichBin == i);
    binMembers     = power(flagBinMembers);
    binMean(i)     = mean(binMembers);
end

figure(10)
loglog(1:length(binMean),binMean)
title('power spectrum by total wavenumber')
xlabel('total wavenumber (cycles per image size)')
ylabel('power, times some unknown factor')


% target that NW-SE stripe
%toy = Ihatsh .* ( abs(kk-ll.*2.2) < kl/8 );%| kl < 5 ); 
%figure; subplot(121); colormap(gray(256)); imagesc(k,l,log(abs(toy)))
%II = abs(ifft2( ifftshift( toy )));
%subplot(122); colormap(gray(256)); imagesc(abs(II)); 

% P = angle(Z) gets the phase angle of a complex number
% real, imag, conj, abs are the MATLAB complex operators
% complex(a,b) makes a complex from real, imag parts
% exp(i*x) makes the complex exponential of x
