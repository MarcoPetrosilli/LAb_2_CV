function filtered_image = lpG_filter(In_image, Dim_ss, Sigma)

    low_pass_G_filter = fspecial('gaussian', [Dim_ss Dim_ss], Sigma);
    
    figure;
    surf(low_pass_G_filter);
    title('Low-pass Gaussian filter \sigma = ' + Dim_ss);
    xlabel('X');
    ylabel('Y');


end