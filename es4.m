
% Main script to apply Fourier Transforms and filters on images

% Step 1: Load the image
img = imread('Lab2_testimages/tree.png');
%img = rgb2gray(img);  % Ensure grayscale

% Step 2: Apply FFT on the original image
display_fft(img, 'Original Image');

% Step 3: Apply Gaussian Low-Pass Filter (size 101x101, sigma=5) and display FFT
filtered_img = apply_gaussian_filter(img, 101, 5);
display_fft(filtered_img, 'Filtered Image');

% Step 4: Apply Sharpening Filter (7x7) and display FFT
sharpened_img = apply_sharpening_filter(img);
display_fft(sharpened_img, 'Sharpened Image');

% Step 5: Display original and sharpened images
figure;
subplot(1, 2, 1), imshow(img), title('Original Image');
subplot(1, 2, 2), imshow(sharpened_img), title('Sharpened Image');
