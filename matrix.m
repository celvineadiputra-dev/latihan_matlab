clc;
close all;
clear;

A = [1 2 3; 3 4 2; 8 2 3]
B = [4 5 2; 9 1 2; 9 2 1]

%perkalian
display('Perkalian')
C = A * B

%penjumlahan
display('Penjumlahan')
D = A + B

%pembagian 
display('Pembagian')
E = A/B
E = A\B

%inverse
display('Inverse')
F = inv(A)

%transpose
display('Transpose')
G = A'
G = transpose(A)

%determinan
display('Determinan')
H = det(A)