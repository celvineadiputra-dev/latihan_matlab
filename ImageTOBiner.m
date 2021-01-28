clc;
clear all;
close all;

I = imread('Img/github.png');
% imcrop(I);
% I = rgb2gray(I);
% 
A = zeros(size(I,1), size(I,2));

for i=1:size(A,1)
    for j=1:size(A,2)
        if(I(i,j) > 240)
            A(i,j) = 1;
        end
    end
end
X = 2;
Y = 3;

figure("Name", "Biner Subplot", "NumberTitle", "off")
subplot(Y,X, 1)
imshow(im2bw(I)); hold on;
imshow(imresize(imcrop(I,[304.5 64.5 601 507]), 0.5));
title("Biner Function")

subplot(Y,X, 2)
imshow(A)
title("Biner Manual")

subplot(Y,X,3)
imshow(~im2bw(I))
title('Biner Reverse Biner Function')

subplot(Y,X,4)
imshow(~A)
title('Biner Reverse Biner Manual')

subplot(Y,X,5)
B = im2bw(I);
for i=1:size(B, 1)
    for j = 1:size(B, 2)
        if(B(i,j) == 0)
            B(i,j) = 1;
        else
            B(i,j) = 0;
        end
    end
end
imshow(B)
title('Biner Reverse Manual Biner Function')

subplot(Y,X,6)
for i=1:size(A, 1)
    for j = 1:size(A, 2)
        if(A(i,j) == 0)
            A(i,j) = 1;
        else
            A(i,j) = 0;
        end
    end
end
imshow(A)
title('Biner Reverse Manual Biner Manual')