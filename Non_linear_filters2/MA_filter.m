% MEDIAN FILTER ref slides 46
%(1) rank-order neighborhood intensities
%(2) take middle value




function filtered_image = MF_filter(In_image, Dim_ss)

Ss = ones(Dim_ss); %spatial support
ImSize = size(In_image);

filtered_image = medfilt2(In_image,[3,3]);
figure
imagesc(filtered_image)
colormap gray
title('non-linear filter')



% for i = 1:1:ImSize(1)
%     for j = 1:1:ImSize(2)
%         %for each pixel we use a 3x3 spatial support
%         if(i==1) Ss(1,1:Dim_ss) = 0; end
%         if(i==ImSize(1)) Ss(3,1:Dim_ss) = 0; end
%         if(j==1) Ss(1:Dim_ss,1) = 0; end
%         if(j==ImSize(2)) Ss(1:Dim_ss,3) = 0 end



end





