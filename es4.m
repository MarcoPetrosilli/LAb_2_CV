
img = imread('tree.png');
IMG=fft2(img);
MOD=abs(IMG);
PHI=angle(IMG);

figure,imagesc(img), colormap gray,axis square

figure,imagesc(log(fftshift(MOD))), colormap gray,xlabel('wx'),ylabel('wy'),axis square


%2
%im=rgb2gray(img);
h = fspecial('gaussian', 101, 5);
out = imfilter(img, h); 
%imagesc(out);colormap gray

IMG2=fft2(out);
MOD=abs(IMG2);

figure,imagesc(log(fftshift(MOD))), colormap gray,xlabel('wx'),ylabel('wy'),axis square

%3

