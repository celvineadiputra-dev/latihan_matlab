clc;
clear all;
close all;

I = imread('Img/github.png');
% I = rgb2gray(I);
% 
A = zeros(size(I,1), size(I,2));

for i=1:size(A,1)
    for j=1:size(A,2)
        if(sum(I(i,j)) > 240)
            A(i,j) = 1;
        end
    end
end


imshow(A)