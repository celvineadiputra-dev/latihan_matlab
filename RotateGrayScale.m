clear all;
clc;
close all;

X = 3;
Y = 2;
I = imread('Img/github.png');

figure
subplot(Y, X, 1)
imshow(I);
title('Image Original')

I = imcrop(I, [412.5 58.5 379 504]);

subplot(Y, X, 2)
imshow(I);
title('Image Crop')


I = imrotate(I, 90);

subplot(Y, X, 2)
imshow(I);
title('Image Rotate 90 degree')

Red = I(:,:,1);
Green = I(:,:,2);
Blue = I(:,:,3);

I = 0.299 * Red + 0.587 * Green + 0.114 * Blue;

subplot(Y, X, 3)
imshow(I);
title('Image GrayScale')

I = im2bw(I);

subplot(Y, X, 4)
imshow(I);
title('Image Biner')

I = ~I;

subplot(Y, X, 5)
imshow(I);
title('Image Biner Reverse')

I = imrotate(I, -90);

subplot(Y, X, 6)
imshow(I);
title('Image Biner Reverse Rotate -90 degree')

