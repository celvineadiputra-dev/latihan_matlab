clc;
clear all;

A = [1 2 3; 4 5 6];
B = [0 0 0; 1 2 3];

c1 = cat(1, A, B);
c2 = cat(2, A, B);


C = "String 1";
C2 = "String 2"

COut = strcat(C," ",C2)


D = 12;
num2str(D)

% matrix identity
E = eye(10,10)


% find
F = [1 2 3; 0 1 0; 0 1 1]
find(F)
find(~F)

% test find
findZero = find(~F)
for i=1:numel(findZero)
    F(findZero(i)) = 1;
end