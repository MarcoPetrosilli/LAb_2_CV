
% Main script to apply Fourier Transforms and filters on images

% Step 1: Load the image
img = imread('Lab2_testimages/tree.png');
%img = img2gray(img);  % Ensure grayscale

% Step 2: Apply FFT on the original image
display_fft1(img, 'Original Image');

% Step 3: Gaussian Low-Pass Filter (size 101x101, sigma=5) and display FFT
filter_gaussian = apply_gaussian_filter(101, 5);
display_fft(filter_gaussian, 'Gaussian Filter FFT');

% Step 4: Sharpening Filter (7x7 on 101x101 zeros) and display FFT
sharpening_filter = apply_sharpening_filter();
display_fft(sharpening_filter, 'Sharpening Filter FFT');

