% MEDIAN FILTER ref slides 46
%(1) rank-order neighborhood intensities
%(2) take middle value




function filtered_image = MF_filter(In_image, Dim_ss)

% In_image = imread("Lab2_testimages\tree.png");
% Dim_ss = 3;





figure
imagesc(In_image)
colormap gray

filtered_image = medfilt2(In_image,[Dim_ss,Dim_ss]);
figure
subplot(1,2,1)
imshow(filtered_image)
title('Median filter')
colormap gray
subplot(1,2,2)
imhist(uint8(filtered_image), 256)

end





