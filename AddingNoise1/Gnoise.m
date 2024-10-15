function Image_GNoise = Gnoise(In_image)
    
figure
imagesc(In_image);
colormap gray

%gaussian noise
std_dev = 20;

Gnoise = double(In_image) + std_dev*randn(size(In_image));

figure 
imagesc(Gnoise)
colormap gray
title("Gaussian noise")

figure
imhist(uint8(Gnoise), 256)
title("Gaussian noise distrubution");


end