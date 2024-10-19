%function recal - use cd to go inside the directory of the function


clear all;clc;


I = imread("Lab2_testimages/tree.png");

while(1)
    
    fprintf('Choose a task for the execution:\n');
    fprintf('1. Salt & pepper and Gaussian noise\n');
    fprintf('2. Removing noise\n');
    fprintf('3. Linear filters\n');
    fprintf('4. Fourier transform\n');
    fprintf('5. Quit\n');
    
    
    choice = input('Insert the number for the choice -> ');
    
    
    switch choice
        case 1

            Gnoise(I);
            SPnoise(I);
    
        case 2

            for i = 1:2
                Dim_ss = [3 7];
                
                sigma = input('Insert a value for the Sigma parameter (3 recommended) -> ');

                fprintf('Spacial support equals to %d\n',Dim_ss(i));
    
                MA_filter(I,Dim_ss(i));
                MF_filter(I,Dim_ss(i));
                IpG_filter(I,30,sigma); % ERRORE
            end

        case 3

            ConvFilter(I);

        case 4

            FourierTransform(I);
    
        case 5

            return

        otherwise

            fprintf('Not valid choice, please try again\n');
    end
end
