function I_filtered_s = sharpening_filter(I)
kernel_1 = zeros(7);
kernel_1(4,4)=2;
kernel_2 = ones(7, 7) / 49;
kernel = kernel_1-kernel_2;

I_filtered_s = conv2(double(I), kernel, 'same');
figure;
imshow(uint8(I_filtered_s)), title('Sharpening filter');
end

