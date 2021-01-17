clc;
clear all;
close all;

X = 3;
Y = 2;
n = 1;

D = 'Img';
S = dir(D);
N = setdiff({S.name}, {'.','..'});

figure
for i = 1:numel(N)
    F = fullfile(D,N{i});
    splitD = split(F,'\');
    splitName = split(splitD(2), '.');
        
    subplot(Y,X, i);
    imshow(F);
    title(splitName(1));
        
    I = imread(F);
    
    Red = I(:,:,1);
    Green = I(:,:,2);
    Blue = I(:,:,3);
        
    I = 0.299 * Red + 0.587 * Green + 0.114 * Blue;
        
    points = detectSURFFeatures(I);
        
    subplot(Y,X, numel(N) + n);
    imshow(I);hold on;
    plot(points.selectStrongest(1));
    title(splitName(1))
        
        
    n = n + 1;
end