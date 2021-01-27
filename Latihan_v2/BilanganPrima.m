clc;
clear all;

% Tampilkan bilangan prima dari 1-10
% Bilangan prima adalah bilangan lebih besar dari 1 dan habis di bagi 1 dan dirinya sendiri

for i=1:10
    if(i == 1)
        continue;
    else
        if(i == 2)
            display(i+" adalah bilangan prima")
        else
            if(mod(i, (2:i-1)) ~= 0)
                display(i+" adalah bilangan prima")
            end
        end
    end
end