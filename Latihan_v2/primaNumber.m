clc;
clear all;


% tampilkan 1-10 bilangan prima

for i=1:10
    if(i == 1)
        continue;
    else
        if(i == 2)
            display("Prima "+i)
        else
            if(mod(i, (2:i-1)) ~= 0)
                display("Prima "+i)
            end
        end
    end
end


% kelipatan 2
for i = 2:2:10
    i
end

% atau 

A = [2:2:10]

A = [1:2:10]

A = [3:3:10]