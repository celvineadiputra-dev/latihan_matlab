I = [2 1 0 0;0 1 2 0; 1 2 1 0; 1 1 0 2];
J = integralImage(I)

A = imread('cameraman.tif');
A = zeros(100,100);
A(50,50) = 156;
A(30,30) = 1;

% A = [1 1 1; 1 2 1; 1 1 1];
% A = [7 4 0 1; 5 6 2 2; 6 10 7 8; 1 4 2 0];
A = [1 2 3; 2 1 3];
sum(sum(A))

localMean = imboxfilt(A,3);
imshowpair(A,localMean,'montage')