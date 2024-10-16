function filtered_img = apply_gaussian_filter(img, filter_size, sigma)
    % Function to apply a Gaussian low-pass filter on an image
    h = fspecial('gaussian', filter_size, sigma);  % Gaussian filter
    filtered_img = imfilter(img, h, 'replicate');  % Apply the filter
end
