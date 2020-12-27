clc 
clear all
Image = imread('peppers.png');


% cara function
rgb2gray(Image);

% Cara dengan menggunakan persamaan
Red = Image(:,:,1);
Green = Image(:,:,2);
Blue = Image(:,:,3);

gray = 0.299 * Red + 0.587 * Green + 0.114 * Blue;


% Cara membuat figure

figure
imshow(rgb2gray(Image));
figure
imshow(gray);


% Cara membuat figure hold on

figure
imshow(rgb2gray(Image)); hold on
imshow(gray);


% Cara buat subplot

figure
subplot(1, 2, 1)
imshow(rgb2gray(Image));
title('rgb2gray')
subplot(1, 2, 2)
imshow(gray);
title('dengan persamaan')