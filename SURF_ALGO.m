clc;
clear all;
close all;

X = 3;
Y = 2;

D = 'ImgSample';
S = dir(fullfile(D, '*'));
N = setdiff({S([S.isdir]).name},{'.','..'})

n = 1;

figure

for ii = 1:numel(N)
    T = dir(fullfile(D,N{ii},'*'));
    C = {T(~[T.isdir]).name};
    for jj = 1:numel(C)
        F = fullfile(D,N{ii},C{jj});
        
        splitD = split(F,'\');
        splitName = split(splitD(3), '.');
        
        subplot(Y,X, jj);
        imshow(F);
        title(splitName(1));
        
        I = imread(F);
%         I = rgb2gray(I);
        Red = I(:,:,1);
        Green = I(:,:,2);
        Blue = I(:,:,3);
        
        I = 0.299 * Red + 0.587 * Green + 0.114 * Blue;
        
        points = detectSURFFeatures(I);
        
        subplot(Y,X, numel(C) + n);
        imshow(I);hold on;
        plot(points.selectStrongest(36));
        title(splitName(1))
        
        
        n = n + 1;
    end
end