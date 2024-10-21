function sharp_img = sharpened_image(I,a,detail_img)
sharp_img=double(I)+a*detail_img;
% figure;
% imshow(uint8(sharp_img)), title('Sharpened image');
% drawnow;

pause(0.01);
end


