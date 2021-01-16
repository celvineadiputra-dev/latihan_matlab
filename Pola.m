clear all;
clc;
close all;

% target
% *****
% *****
% *****
% *****

for i=1:5
    for j=1:5
        fprintf('*')
    end
    fprintf('\n')
end

%target
% *
% **
% ***
% ****
% *****

for i = 1:5
    for j = 1:i
        fprintf('*')
    end
    fprintf('\n')
end