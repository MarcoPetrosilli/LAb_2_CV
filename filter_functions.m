% Funzione 1: Calcolo della somma
function I_filtered_i = impulse_filter(I)
    kernel=zeros(7);
    kernel(4,4)=1;
    I_filtered_i = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_i)), title('Impulse filter');
end

function I_filtered_ls = leftShifted_filter(I)
    kernel = zeros(7);
    kernel(4,1)=1;
    I_filtered_ls = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_ls)), title('Left shifted filter');
end

function I_filtered_i = impulse_filter()
    kernel=zeros(7);
    kernel(4,4)=1;
    I_filtered_i = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_i)), title('Impulse filter');
end

function I_filtered_i = impulse_filter()
    kernel=zeros(7);
    kernel(4,4)=1;
    I_filtered_i = conv2(double(I), kernel, 'same');
    figure;
    imshow(uint8(I_filtered_i)), title('Impulse filter');
end