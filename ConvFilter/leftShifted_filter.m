function I_filtered_ls = leftShifted_filter(I)
    kernel = zeros(7);
    kernel(4,1)=1;
    I_filtered_ls = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_ls)), title('Left shifted filter');
    drawnow;
    figure,imagesc(kernel),colormap gray,title('Left shifted filter');
    drawnow;
    figure,surf(kernel),title('Left shifted filter');
    drawnow;

    pause(0.01);
end