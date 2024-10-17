function filter_gaussian = apply_gaussian_filter(filter_size, sigma)
    % Function to apply a Gaussian low-pass filter on an image
    filter_gaussian = fspecial('gaussian', filter_size, sigma);  % Gaussian filter
    %filtered_img = imfilter(img, h, 'replicate');  % Apply the filter
end
