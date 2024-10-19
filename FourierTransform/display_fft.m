function display_fft(filt, img_title)
    
    filter=fftshift(fft2(filt));
    figure,mesh(abs(filter)),xlabel('wx'),ylabel('wy'),zlabel('abs(F)')%low-pass filter
    title(['Magnitude of ', img_title]);
    figure,imagesc(abs(filter)),colormap gray,xlabel('wx'),ylabel('wy')
    title(['Magnitude of ', img_title]);
    colorbar;  % Display color bar for magnitude

end
