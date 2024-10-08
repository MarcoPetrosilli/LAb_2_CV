
%I = imread('Lab2_testimages/tree.png');
I = imread('Lab2_testimages/i235.png');

figure; 
imshow(I),title('Immagine originale');

%Impulse filter
I_filtered_i = impulse_filter(I);

% Left shifted filter
I_filtered_ls = leftShifted_filter(I);

%Blurred with box filter
I_filtered_box = box_filter(I);

%Sharpening filter
I_filtered_s = sharpening_filter(I);

%Detailed image
detail_img = detailed_image(I,I_filtered_box);

%Sharpened image
a=2;
sharp_img=sharpened_image(I,a,detail_img);
