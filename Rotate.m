clear all;
clc;
close all;

I = imread('Img/github.png');
% Crop = imcrop(I);

I = imcrop(I, [412.5 58.5 379 504]);

I = imrotate(I, 90);

imshow(I)