function Image_Gnoise = Gnoise(In_image, std_dev)

%gaussian noise



Image_Gnoise = double(In_image) + std_dev*randn(size(In_image));

figure
sgtitle("Gaussian noise (standard deviation  = " + num2str(std_dev) +")")
subplot(1,2,1)
imagesc(Image_Gnoise)
colormap gray
title("Gaussian noise on image")

subplot(1,2,2)
imhist(uint8(Image_Gnoise), 256)
title("Gaussian noise distrubution");


end