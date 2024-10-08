function detail_img = untitled(I,I_filtered_box)
detail_img = double(I)-I_filtered_box;
figure;
imshow(uint8(detail_img)), title('Detail from image');
drawnow;
end

