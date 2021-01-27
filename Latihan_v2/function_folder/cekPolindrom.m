function f = cekPolindrom(text)
    tmp = [];
    for i=numel(text):-1:1
        tmp = [tmp;text(i)];
    end
    
    tmp = convertCharsToStrings(tmp);
    if(tmp == convertCharsToStrings(text))
        display("Polindrom")
    else
        display("Bukan")
    end
end