% basic SST data 
sst = double(ncload('/Users/bem/SST/sst.mnmean.unpacked.nc','sst'));
sst = permute(sst(:,:,1:1836), [2 1 3]); % lat, lon, time

% for cos lat weighting
lat = double(ncload('/Users/bem/SST/sst.mnmean.unpacked.nc','lat'));
lat3d = reshape(repmat(lat,[180 1836]), 89, 180, 1836);

% south is up on the figures, but who cares, or OK lets flip
sst = flipdim(sst,1);
lat3d = flipdim(lat3d,1);
coslat3d = cos(lat3d *3.14159/180.);

% Set bad to NaN
bad = find(sst > 300); 
sst(bad) = NaN;
lat3d(bad) = NaN; 



% clim12 is the annual climatology
sst12 = reshape(sst, 89, 180, 12, 153);
clim12 = nanmean(sst12,4);
coslat12 = reshape(coslat3d, 89, 180, 12, 153);
coslat12 = nanmean(coslat12,4);

%subtract clim12 from each year to get anomalies
ssta = sst12 .*0;
for iy = 1:153
    ssta(:,:,:,iy) = sst12(:,:,:,iy) - clim12;
end
ssta = reshape(ssta,89,180,1836);




%%%%%%%%%%%%%%%% principal components of global!
% Weight anomalies by sqrt(cos(lat)) so variance is weighted by cos(lat) 
% anomalies are 0 over land at all times (NaN values). 
% Reshape so lat and lon are packed into 89*180, will unpack results later
X = reshape(ssta.*sqrt(coslat3d),[89*180 1836]);
X(isnan(X)) = 0;

%%%%%%%%% The usual way: time as the sample dimension, space is structural
X2 = permute(X,[2 1]);

%%%%%%%%% The faster way: time as the structural dimension (1836 months) 
%%%%%%%%% In this way, the "EOF" (COEFF) is in time 
%%%%%%%%%               and "PC" (SCORE) is in space. 
[COEFF,SCORE,latent,tsquare] = princomp(X);
%%% took about a minute on my desktop machine

% explained variance: print it
explained = latent/sum(latent(:)) .*100;



% PLOT a few figures with PC-EOF components
% PC1 (time series) is the COEFF in this permuted way (time-space)
i=1;
figure(i)
subplot(3,2,1:2)
plot(linspace(1856,2009,1836), COEFF(:,i))
title(['PC(t) and EOF(x,y) ' int2str(i) '    ' num2str(explained(i)) '%'])
% EOF1 in space is SCORE in this permuted way (time-space)
subplot(3,2,3:6)
contourf( reshape(SCORE(:,i), 89,180))
colorbar()



% reconstruct the data
reconX = SCORE*transpose(COEFF);

% look at recon error: global warming since temporal anomalies were used
% in a permuted way (with space as the statistical dimension)
err = X-reconX;
err3d = reshape(err,89,180,1836);
contourf(squeeze(mean(err3d,2)))
contourf(squeeze(mean(err3d,1)))
contourf(squeeze(mean(err3d,3)))
plot(mean(err,1))





% recon to truncation 5,4,3,2,1 by zeroing out COEFFs
COEFF2 = COEFF;

COEFF2(:,5+1:end) = 0;
recon5 = SCORE*transpose(COEFF2);
COEFF2(:,4+1:end) = 0;
recon4 = SCORE*transpose(COEFF2);
COEFF2(:,3+1:end) = 0;
recon3 = SCORE*transpose(COEFF2);
COEFF2(:,2+1:end) = 0;
recon2 = SCORE*transpose(COEFF2);
COEFF2(:,1+1:end) = 0;
recon1 = SCORE*transpose(COEFF2);



% animate raw and reconstructed data 
% WHY DOESNT LEVELLISTMODE MANUAL
% WORK??? ^&$*#&*@^ MATLAB
aviobj = avifile('SST_EOFs.avi','compression','None');
for it = 1000:1048
    subplot(2,3,1)
    contourf(squeeze(ssta(:,:,it)), 'LevelListMode','manual',...
        'LevelList', linspace(-2,2,20))
    colorbar;
    
    subplot(2,3,2)
    contourf( reshape(recon1(:,it), 89,180), 'LevelListMode','manual',...
        'LevelList', linspace(-2,2,20))
    colorbar;
    
    subplot(2,3,3)
    contourf( reshape(recon2(:,it), 89,180), 'LevelListMode','manual',...
        'LevelList', linspace(-2,2,20))
    colorbar;
    
    subplot(2,3,4)
    contourf( reshape(recon3(:,it), 89,180), 'LevelListMode','manual',...
        'LevelList', linspace(-2,2,20))
    colorbar;
    
    subplot(2,3,5)
    contourf( reshape(recon4(:,it), 89,180), 'LevelListMode','manual',...
        'LevelList', linspace(-2,2,20))
    colorbar;
    
    subplot(2,3,6)
    contourf( reshape(recon5(:,it), 89,180), 'LevelListMode','manual',...
        'LevelList', linspace(-2,2,20))
    colorbar;
    
    F = getframe(gcf);
    aviobj = addframe(aviobj,F);
end
aviobj = close(aviobj);

