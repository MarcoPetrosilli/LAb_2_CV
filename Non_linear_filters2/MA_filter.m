function filtered_image = MA_filter(In_image, Dim_ss)


    % In_image = imread("Lab2_testimages\tree.png");
    % Dim_ss = 7;

    % Ss=ones(Dim_ss)/(Dim_ss^2);
    figure
    imagesc(In_image)
    colormap gray

    MAfilter = fspecial('average', [Dim_ss Dim_ss]);
    filtered_image=conv2(In_image,MAfilter,'same');


    figure;
    subplot(1,2,1)
    surf(MAfilter);
    title("Moving average filter");
    xlabel('X');
    ylabel('Y');
    subplot(1,2,2)
    imagesc(MAfilter)
    grid on

    figure
    subplot(1,2,1)
    imagesc(filtered_image)
    colormap gray
    title("Moving average")

    subplot(1,2,2)
    imhist(uint8(filtered_image), 256)

end