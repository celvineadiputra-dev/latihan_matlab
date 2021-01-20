clc;
clear all;


up = 1;
limit = 100;


while up < limit
    if(mod(up, 2) == 0)
        str1 = 'Bilangan Genap ';
        str2 = int2str(up);
        str = [str1 str2];
        display(str)
    elseif (mod(up, 2) ~= 0)
        str = ['Bilangan Ganjil ' int2str(up)];
        display(str)
    end
    up = up + 1;
end


up = 1;
limit = 100;

for i=up:limit
    if(mod(up,2) == 0)
        display(['Genap dengan for ' int2str(up)])
    elseif(mod(up, 3) == 0)
        display(['Bilangan habis di bagi 3 dengan for ' int2str(up)])
    else
        display(['Bilangan lain dengan for ' int2str(up)])
    end
    up = up + 1;
end