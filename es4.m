
img = imread("Lab2_testimages\tree.png");
IMG=fft2(img);
MOD=abs(IMG);
PHI=angle(IMG);

figure,imagesc(img), colormap gray,axis square

figure,imagesc(log(fftshift(MOD))), colormap gray,xlabel('wx'),ylabel('wy'),axis square
title('Log-Magnitude Spectrum of Original Image');

%2: Gaussian low-pass filter (size 101x101, sigma=5)
%im=rgb2gray(img);
h = fspecial('gaussian', 101, 5);
out = imfilter(img, h); 
%imagesc(out);colormap gray

IMG2=fft2(out);
MOD=abs(IMG2);

figure,imagesc(log(fftshift(MOD))), colormap gray,xlabel('wx'),ylabel('wy'),axis square
title('Log-Magnitude Spectrum of Filtered Image');

%3

% Step 2: Create a 7x7 sharpening filter accentuating differences with local average
% Local averaging filter (mean filter 7x7)
local_average_filter = (1/49) * ones(7, 7);  % 7x7 averaging filter

% Identity filter (7x7) placed at the center
identity_filter = zeros(7, 7);
identity_filter(4, 4) = 2;  % Central pixel (4,4) corresponds to the center of a 7x7 filter

% Sharpening filter = Identity filter - Local averaging filter
sharpening_filter = identity_filter - local_average_filter;

% Step 3: Apply the sharpening filter to the image
sharpened_image = imfilter(img, sharpening_filter, 'replicate');

% Step 4: Apply the 2D FFT to the sharpened image
FFT_sharpened_img = fft2(sharpened_image);
MOD_sharpened_img = abs(FFT_sharpened_img);  % Magnitude of the FFT result

% Step 5: Display the log-magnitude spectrum of the transformed sharpened image
figure;
imagesc(log(1 + fftshift(MOD_sharpened_img))); % Use fftshift to center the low frequencies
colormap gray;
xlabel('wx');
ylabel('wy');
title('Log-Magnitude Spectrum of Transformed Sharpened Image');
axis square;
colorbar; % Add a color bar for magnitude scale

% Step 6: Display the original and sharpened image for reference
figure;
subplot(1, 2, 1), imshow(img), title('Original Image');
subplot(1, 2, 2), imshow(sharpened_image), title('Sharpened Image');



