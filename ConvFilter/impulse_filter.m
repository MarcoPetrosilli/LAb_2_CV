function I_filtered_i = impulse_filter(I)
    kernel=zeros(7);
    kernel(4,4)=1;
    I_filtered_i = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_i)), title('Impulse filter');
    drawnow;

    figure
    subplot(1,2,1),surf(kernel),title('Impulse filter');
    drawnow;
    subplot(1,2,2),imagesc(kernel);
    drawnow;

    pause(0.01);
end
