%Add Gaussian (standard deviation=20) and salt & pepper (density=20%) noise to the provided 
%images: display the images, the noisy images, and their histograms.


img_in = imread("Lab2_testimages\tree.png"); 

figure
imagesc(img_in);
colormap gray

%% gaussian noise
std_dev = 20;

img_out=double(img_in)+std_dev*randn(size(img_in));

figure
subplot(1,2,1)
imagesc(img_out)
colormap gray
title("Gaussian noise")

% histogram
% figure
subplot(1,2,2)
histogram(img_out, 256)
title("Noise distrubution");

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
subplot(1,2,1)
imagesc(img_out)
colormap gray
title("Salt & pepper")

% histogram
% figure
subplot(1,2,2)
histogram(img_out, 256)
title("Salt & pepper distribution")



