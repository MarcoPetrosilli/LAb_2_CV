function I_filtered_i = impulse_filter(I)
    kernel=zeros(7);
    kernel(4,4)=1;
    I_filtered_i = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_i)), title('Impulse filter');
end
