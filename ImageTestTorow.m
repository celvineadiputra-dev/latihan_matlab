clear all;
clc;

I = imread('Img/github.png');
I = imresize(I, [300,300]);
I = im2bw(I);
col = reshape(I,1,[]);