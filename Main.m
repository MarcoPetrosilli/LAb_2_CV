clear all; clc; close all;


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
            addpath("AddingNoise1\");
            Gnoise(I);
            SPnoise(I);
    
        case 2
            addpath("Non_linear_filters2\");
            for i = 1:2
                Dim_ss = [3 7];
                
                sigma = input('Insert a value for the Sigma parameter (3 recommended) -> ');

                fprintf('Spacial support equals to %d\n',Dim_ss(i));
    
                MA_filter(I,Dim_ss(i));
                MF_filter(I,Dim_ss(i));
                lpG_filter(I,Dim_ss(i),sigma); % ERRORE
            end

        case 3
            addpath("ConvFilter\");
            ConvFilter(I);

        case 4
            addpath("FourierTransform\");
            FourierTransform(I);
    
        case 5

            return

        otherwise

            fprintf('Not valid choice, please try again\n');
    end
end
