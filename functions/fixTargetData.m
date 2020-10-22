function [ target_data ] = fixTargetData( y )
%FIXTARGETDATA Summary of this function goes here
%   Transforma 'y' en 10 labels (desde 1 a 10) 

[n, m] = size(y);
target_data = zeros(10, 5000);

for i = 1:m
    value = y(1,i);
    for j = 1:10
        if j == value
            target_data(j,i) = 1;
        else
            target_data(j,i) = 0;
        end
    end 
end

end

