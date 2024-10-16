function filtered_image = lpG_filter(In_image, Dim_ss, Sigma)


    % In_image = imread("Lab2_testimages\tree.png");
    % Sigma = 3;
    % Dim_ss = 30;
    figure
    imagesc(In_image)
    colormap gray

    low_pass_G_filter = fspecial('gaussian', [Dim_ss Dim_ss], Sigma);
    
    figure
    subplot(1,2,1)
    title("Low-pass Gaussian filter");
    surf(low_pass_G_filter);
    xlabel('X'); ylabel('Y');
    subplot(1,2,2)
    imagesc(low_pass_G_filter)
    grid on
    
    % In2grey = im2gray(In_image);
    filtered_image = imfilter(In2grey, low_pass_G_filter);
    figure
    subplot(1,2,1)
    imshow(filtered_image); %imshow o imagesc?
    subplot(1,2,2)
    imhist(uint8(filtered_image), 256)
 end