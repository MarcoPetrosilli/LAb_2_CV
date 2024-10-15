%% Remove the noise by using a moving average, a low-pass Gaussian filter and a median filter:
% o use two different spatial supports: 3x3 pixels and 7x7 pixels;
% o display the filters by using imagesc() and surf();
% o display the resulting images and their histograms;


%smoothing by averaging 
K=ones(3)/9;
outc=conv2(B,K,'same');
figure,imagesc(outc),colormap gray,title('smoothing by averaging')
figure,plot(A(40,:),'r'),hold on,plot(outc(40,:),'b'),plot(outm(40,:),'g')

%non-linear filter
outm=medfilt2(B,[3,3]);
figure,imagesc(outm),colormap gray,title('non-linear filter')
figure,plot(A(40,:),'r'),hold on,plot(outc(40,:),'b'),plot(outm(40,:),'g')

