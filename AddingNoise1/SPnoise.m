function Image_SPnoise = SPnoise(In_image)

figure
imagesc(In_image);
colormap gray

%Salt and pepper 
density = 0.2;

In_image=double(In_image);
[raws,cls]=size(In_image);
maxv=max(max(In_image));

img_indices=full(sprand(raws,cls,density));

mask1=img_indices>0 & img_indices<0.5;  %pepper
mask2=img_indices>=0.5; %salt

Image_SPnoise= In_image.*(~mask1) ;
Image_SPnoise= Image_SPnoise.*(~mask2)+maxv*mask2;

figure
imagesc(SPnoise)
colormap gray
title("Salt & pepper noise")

figure
imhist(uint8(SPnoise), 256)
title("Salt & pepper noise distribution")

end