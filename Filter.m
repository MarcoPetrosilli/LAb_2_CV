
images = cell(1, 7);
titles = ["Original image", "Impulse filter", "Left shifted filter", "Box filter", "Sharpening filter", "Detail from image", "Sharpened image"];


%I = imread('Lab2_testimages/tree.png');
I = imread('Lab2_testimages/i235.png');
images{1}=I;

figure; 
imshow(I);title('Original image'),drawnow;

%Impulse filter
I_filtered_i = impulse_filter(I);
images{2}=I_filtered_i;

% Left shifted filter
I_filtered_ls = leftShifted_filter(I);
images{3}=I_filtered_ls;

%Blurred with box filter
I_filtered_box = box_filter(I);
images{4}=I_filtered_box;

%Sharpening filter
I_filtered_s = sharpening_filter(I);
images{5}=I_filtered_s;

%Detailed image
detail_img = detailed_image(I,I_filtered_box);
images{6}=detail_img;

%Sharpened image
a=2;
sharp_img=sharpened_image(I,a,detail_img);
images{7}=sharp_img;

%Display images
figure;
for i = 1:7
    subplot(2, 4, i);
    imshow(images{i});
    title([titles(i)]); 
end
