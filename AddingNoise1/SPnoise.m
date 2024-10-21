function Image_SPnoise = SPnoise(In_image, density)

%Salt and pepper 

In_image=double(In_image);
[raws,cls]=size(In_image);
maxv=max(max(In_image));

img_indices=full(sprand(raws,cls,density));

mask1=img_indices>0 & img_indices<0.5;  %pepper
mask2=img_indices>=0.5; %salt

Image_SPnoise= In_image.*(~mask1) ;
Image_SPnoise= Image_SPnoise.*(~mask2)+maxv*mask2;

figure
sgtitle("Salt & pepper noise (density = " + num2str(density) + ")")
subplot(1,2,1)
imagesc(Image_SPnoise)
colormap gray
title("Salt & pepper noise on image")

subplot(1,2,2)
imhist(uint8(Image_SPnoise), 256)
title("Salt & pepper noise distribution")

end