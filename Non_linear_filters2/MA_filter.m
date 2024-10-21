function filtered_image = MA_filter(In_image, Dim_ss, string)

    MAfilter = fspecial('average', [Dim_ss Dim_ss]);
    filtered_image=conv2(In_image,MAfilter,'same');


    figure;
    sgtitle("Moving average filter on " + string + " : dimension " + num2str(Dim_ss))
    subplot(2,2,1)
    surf(MAfilter);
    xlabel('X');
    ylabel('Y');
    subplot(2,2,2)
    imagesc(MAfilter)
    grid on

    subplot(2,2,3)
    title("Moving average filter")
    imagesc(filtered_image); colormap(gca, 'gray');

    subplot(2,2,4)
    title(string)
    imhist(uint8(filtered_image), 256)

end