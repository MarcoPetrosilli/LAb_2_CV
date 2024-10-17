function padded_filter = apply_sharpening_filter()
   
    %Create 7x7 local averaging filter (mean filter)
    local_average_filter = (1/49) * ones(7, 7);
    
    %Create the 7x7 identity filter with center value 2 (sharpening effect)
    identity_filter = zeros(7, 7);
    identity_filter(4, 4) = 2;  % Central pixel (4,4) corresponds to the center
    
    % Define the sharpening filter = Identity filter - Local averaging filter
    sharpening_filter = identity_filter - local_average_filter;
    
    % Create a 101x101 zero-padded filter and place the 7x7 sharpening filter in the center
    pad_size = 101;       
    filter_size = 7;       % Size of the sharpening filter
    padded_filter = zeros(pad_size, pad_size);  % Create a zero matrix (101x101)
    
    % Calculate starting index to place the 7x7 filter in the middle of the 101x101 matrix
    filter_idx = floor((pad_size - filter_size) / 2) + 1;
    
    % Place the 7x7 sharpening filter in the middle of the 101x101 zero matrix
    padded_filter(filter_idx:filter_idx+filter_size-1, filter_idx:filter_idx+filter_size-1) = sharpening_filter;
    
    
end
