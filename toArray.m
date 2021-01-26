clc;
clear all;

A = zeros(2,5);
n = 1;
j = 1;
for i=1:10
    if(i == 6)
        n = n + 1;
        j = 1;
    end
    A(n, j) = i;
    j = j + 1;
end

A