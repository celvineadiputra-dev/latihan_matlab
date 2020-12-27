clc 
clear all

I = imread('Img/github.png');

Red = I(:,:,1);
Green = I(:,:,2);
Blue = I(:,:,3);

grayscale = Red * 0.299 + Green * 0.587 + Blue * 0.114;

figure
subplot(3,2,1)
imshow(I)
title("Image Asli")

subplot(3,2,2)
imshow(im2bw(grayscale))
title("black and white")

subplot(3,2,3)
imshow(~im2bw(grayscale))
title("0 to 1 and 1 to 0")


subplot(3,2,4)
imshow(imresize(~im2bw(grayscale), 0.1))
title("resize")

subplot(3,2,5)
imshow(imcrop(~im2bw(grayscale),[390.5 64.5 427 480]))
title("Crop")


