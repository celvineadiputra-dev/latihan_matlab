clc;
clear all;
close all;

folder = "ImgSample";
subfolder = dir(fullfile(folder, '*'));
subFolder2 = setdiff({subfolder([subfolder.isdir]).name},{'.','..'});

for i = 1: numel(subFolder2)
    sub = dir(fullfile(folder, subFolder2(i),'*'));
    T = {sub(~[sub.isdir]).name};
    for j = 1:numel(T)
        file = fullfile(folder, subFolder2(i), T(j));
        varname = convertCharsToStrings(cell2mat(T(j)));
        varname = split(varname, '.');
        assignin('base', ("data_"+varname(1)), file);
    end
end