clc;
clear all;

text = 'masakan';

if(strcmp(text, fliplr(text)))
    display('Ok')
end


tmp = [];
for i=numel(text):-1:1
    tmp = [tmp;text(i)];
end

tmp = reshape(tmp,1,[]);

if(strcmp(text, tmp))
    display('Yes')
else
    display('Not')
end
