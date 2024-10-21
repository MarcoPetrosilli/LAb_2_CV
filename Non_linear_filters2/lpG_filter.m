function filtered_image = lpG_filter(In_image, Dim_ss, Sigma, string)

    low_pass_G_filter = fspecial('gaussian', [Dim_ss Dim_ss], Sigma);
    
    figure

    sgtitle("Low-pass Gaussian filter on " + string + " : dimension " + num2str(Dim_ss));
    subplot(2,2,1)
    surf(low_pass_G_filter);
    xlabel('X'); ylabel('Y');
    subplot(2,2,2)
    imagesc(low_pass_G_filter);
    grid on
        
    filtered_image = imfilter(In_image, low_pass_G_filter);
    
    subplot(2,2,3)
    title("Low pass Gaussian filter")
    imagesc(filtered_image); colormap(gca, 'gray');
    subplot(2,2,4)
    title(string)
    imhist(uint8(filtered_image), 256)


    


 end