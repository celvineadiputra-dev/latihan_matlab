clc;
clear all;
close all;

figure("Name","SATU", "NumberTitle", "off")
imshow(imread('Img/github.png')); hold on;
imshow(imresize(imread('ImgSample/Image1/react.png'),[100 100]))

figure("Name","DUA")
imshow(imread('Img/github.png'))