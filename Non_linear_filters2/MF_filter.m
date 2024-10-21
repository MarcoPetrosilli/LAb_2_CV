function filtered_image = MF_filter(In_image, Dim_ss, string)


filtered_image = medfilt2(In_image,[Dim_ss,Dim_ss]);
figure
sgtitle("Median filter on " + string + " : dimension " + num2str(Dim_ss))
subplot(1,2,1)
imagesc(filtered_image); colormap(gca, 'gray');
subplot(1,2,2)
title(string)
imhist(uint8(filtered_image), 256)

end





