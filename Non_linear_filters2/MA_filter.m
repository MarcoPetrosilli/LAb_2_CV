%function filtered_image = MA_filter(In_image, Dim_ss)

%(1) rank-order neighborhood intensities, and
%(2) take middle value.
In_image = A;
Dim_ss = 3
%ref slides 46

%Border handling method: zero-padding
Ss = ones(Dim_ss);
ImSize = size(In_image);

for i = 1:1:ImSize(1)
    for j = 1:1:ImSize(2)
        %for each pixel we use a 3x3 spatial support
        if(i==1) Ss(1,1:Dim_ss) = 0; end
        if(i==ImSize(1)) Ss(3,1:Dim_ss) = 0; end
        if(j==1) Ss(1:Dim_ss,1) = 0; end
        if(j==ImSize(2)) Ss(1:Dim_ss,3) = 0 end



end

%end




