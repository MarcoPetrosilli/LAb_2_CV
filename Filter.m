
%I = imread('Lab2_testimages/tree.png');
I = imread('Lab2_testimages/i235.png');

figure; 
imshow(I),title('Immagine originale');


%Impulse filter
I_filtered_i = impulse_filter(I);

% Left shifted filter
I_filtered_ls = leftShifted_filter(I);

%Blurred with box filter
kernel = ones(7, 7) / 49;
I_filtered_box = conv2(double(I), kernel, 'same');
figure;
imshow(uint8(I_filtered_box)), title('Box filter');

%Sharpening filter
kernel_1 = zeros(7);
kernel_1(4,4)=2;
kernel_2 = ones(7, 7) / 49;
kernel = kernel_1-kernel_2;

I_filtered_s = conv2(double(I), kernel, 'same');
figure;
imshow(uint8(I_filtered_s)), title('Sharpening filter');

%Detailed image
detail_img = double(I)-I_filtered_box;
figure;
imshow(uint8(detail_img)), title('Detail from image');

%Sharpened image
a=2;
sharp_img=double(I)+a*detail_img;
figure;
imshow(uint8(sharp_img)), title('Sharpened image');
