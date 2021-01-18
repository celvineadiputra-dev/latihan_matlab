clc;
clear all;

I = imread('Img/github.png');
I = imtranslate(I,[15, 15]);
I = imrotate(I, 90);

figure
subplot(1,2,1)
imshow(I)
title('IMAGE')