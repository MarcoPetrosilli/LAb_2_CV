function detail_img = detailed_image(I,I_filtered_box)
detail_img = double(I)-I_filtered_box;
figure;
imshow(uint8(detail_img)), title('Detail from image');
drawnow;

pause(0.01);
end

