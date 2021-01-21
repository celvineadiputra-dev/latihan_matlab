clc;
clear all;

I = imread('Img/github.png');

Red = I(:,:,1);
Green = I(:,:,2);
Blue = I(:,:,3);

GrayImage = 0.299 * Red + 0.587 * Green + 0.114 * Blue;

BinnaryImage = im2bw(GrayImage);

BinnaryImageResize = imresize(BinnaryImage, [300, 300]);

oneRow = reshape(BinnaryImageResize, 1, []);

imageBack = reshape(oneRow,300, []);
imageBack = ~imageBack;

imshow(imageBack);
