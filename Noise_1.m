%Add Gaussian (standard deviation=20) and salt & pepper (density=20%) noise to the provided 
%images: display the images, the noisy images, and their histograms.
close all;

img_in = imread("Lab2_testimages\tree.png"); 

figure
imagesc(img_in);
colormap gray

%% gaussian noise
std_dev = 20;

img_out = double(img_in) + std_dev*randn(size(img_in));

figure 
imagesc(img_out)
colormap gray
title("Gaussian noise")

% histogram
figure
imhist(uint8(img_out), 256)
title("Gaussian noise distrubution");

%% Salt and pepper 
density = 0.2;

img_in=double(img_in);
[raws,cls]=size(img_in);
maxv=max(max(img_in));

img_indices=full(sprand(raws,cls,density));

mask1=img_indices>0 & img_indices<0.5;  %pepper
mask2=img_indices>=0.5; %salt

img_out= img_in.*(~mask1) ;
img_out=img_out.*(~mask2)+maxv*mask2;

figure
imagesc(img_out)
colormap gray
title("Salt & pepper noise")

% histogram
figure
imhist(uint8(img_out), 256)
title("Salt & pepper noise distribution")



