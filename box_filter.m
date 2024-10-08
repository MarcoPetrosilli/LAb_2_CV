function I_filtered_box = box_filter(I)
    kernel = ones(7, 7) / 49;
    I_filtered_box = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_box)), title('Box filter');
end

