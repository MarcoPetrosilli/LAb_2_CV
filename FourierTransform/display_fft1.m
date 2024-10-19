function display_fft1(img, img_title)
    % Function to display the FFT of an image with log-magnitude
    IMG = fft2(img);              % 2D Fourier Transform
    MOD = abs(IMG);               % Magnitude of the FFT
    figure;
    imagesc(log(fftshift(MOD)));   % Log-magnitude and fftshift
    colormap gray;
    xlabel('wx');
    ylabel('wy');
    title(['Log-Magnitude Spectrum of ', img_title]);
    axis square;
    colorbar;  % Display color bar for magnitude
end