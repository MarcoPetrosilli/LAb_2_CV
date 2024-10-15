function sharpened_img = apply_sharpening_filter(img)
    % Function to apply a 7x7 sharpening filter to an image
    % Create 7x7 local averaging filter (mean filter)
    local_average_filter = (1/49) * ones(7, 7);
    
    % Identity filter (7x7) placed at the center
    identity_filter = zeros(7, 7);
    identity_filter(4, 4) = 2;  % Central pixel (4,4) has a value of 2
    
    % Sharpening filter = Identity filter - Local averaging filter
    sharpening_filter = identity_filter - local_average_filter;
    
    % Apply the sharpening filter to the image
    sharpened_img = imfilter(img, sharpening_filter, 'replicate');
end
