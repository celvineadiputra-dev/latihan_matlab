clear all
clc
% mod
mod(11, 2)

% bilangan caca dari 1 - 10 yang habis di bagi 2 dan tidak habis di bagi 3
% bilangan caca adalah bilangan bulat postif

display('------------')
for i = 1:10
    if(mod(i, 2) == 0 && mod(i, 3) == 0)
        i
    end
end
display('------------')
