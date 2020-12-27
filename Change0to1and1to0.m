clear all
clc

% Change 0 to 1 and 1 to 0
binerImage = [
    0 0 0 0 0; 
    1 1 0 1 1;
    1 1 0 1 1;
    0 0 1 0 0;
    0 0 0 0 0
    ]

% imshow(binerImage)

% find(binerImage)
% find(~binerImage)

% binerImage(find(~binerImage)) = 1
% binerImage(find(binerImage)) = 0

binerImage = ~binerImage

imshow(binerImage)


