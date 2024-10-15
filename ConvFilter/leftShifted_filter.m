function I_filtered_ls = leftShifted_filter(I)
    kernel = zeros(7);
    kernel(4,1)=1;
    I_filtered_ls = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_ls)), title('Left shifted filter');
    drawnow;

    figure
    subplot(1,2,1),surf(kernel),title('Left shifted filter');
    drawnow;
    subplot(1,2,2),imagesc(kernel),grid on;
    drawnow;

    pause(0.01);
end