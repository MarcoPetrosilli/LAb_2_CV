clear all; clc; close all;
%set(0, 'DefaultFigureWindowState', 'maximized'); %to visualize figures on full screnn

I = imread("Lab2_testimages/tree.png");
I = im2gray(I);





while(1)
    
    fprintf('Choose a task for the execution:\n');
    fprintf('1. Salt & pepper and Gaussian noise, filter use on noise images\n');
    fprintf('2. Linear filters\n');
    fprintf('3. Fourier transform\n');
    fprintf('4. Quit\n');
 
    choice = input('Insert the number for the choice -> ');
    
    
    switch choice
        case 1
            figure
            imagesc(I);
            title("Original image");
            colormap gray

            addpath("AddingNoise1\");
            std_dev = 20;
            Im_Gnoise = Gnoise(I, std_dev);
            density = 0.2;
            Im_SPnoise = SPnoise(I, density);
            
            addpath("Non_linear_filters2\");
            sigma = input('Insert a value for the Sigma parameter of filters (3 recommended) -> ');
            
            for i = 1:2
                Dim_ss = [3 7];
    
                lpG_filter(Im_Gnoise,Dim_ss(i),sigma, "Gaussian noise");
                MA_filter(Im_Gnoise,Dim_ss(i),"Gaussian noise");
                MF_filter(Im_Gnoise,Dim_ss(i), "Gaussian noise");
                
                lpG_filter(Im_SPnoise,Dim_ss(i),sigma, "Salt & Pepper noise");
                MA_filter(Im_SPnoise,Dim_ss(i),"Salt & Pepper noise");
                MF_filter(Im_SPnoise,Dim_ss(i), "Salt & Pepper noise");
                

                % perfezionare che le immagini filtrate le usi con la
                % funzione in modo che in un unico subplot 3*2 plotti le
                % immagini filtrate con i diversi filtri e i diversi
                % supporti spaziali

                %volgio fare in modo ora che i subplot contengano per ogni
                %immagine gli effetti dello stesso filtro al variare del
                %supporto spaziale
            end

        case 2
            addpath("ConvFilter\");
            ConvFilter(I);

        case 3
            addpath("FourierTransform\");
            FourierTransform(I);
    
        case 4
            return

        otherwise
            fprintf('Not valid choice, please try again\n');
    end
end
