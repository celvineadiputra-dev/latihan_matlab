clc;
clear all;

% polindrom dengan function
text = 'radar';

if(strcmpi(text, fliplr(text)))
    display(true)
else
    display(false)
end

% polindrom manual
textTmp = [];
for i = numel(text):-1:1
    textTmp = [textTmp;text(i)];
end

if(convertCharsToStrings(textTmp) == convertCharsToStrings(text))
    display("Polindrom")
else
    display("Bukan Polindrom")
end