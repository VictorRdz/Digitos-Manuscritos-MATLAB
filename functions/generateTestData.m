function [test_data, image] = generateTestData(input_data)
%GENERATEMAINIMAGE Summary of this function goes here
%   Detailed explanation goes here

[n, m] = size(input_data);
sel = randperm(m);
sel = sel(1:100);
test_data = input_data(:,sel);
display_array = getDisplayArray(test_data);
image = saveImage(display_array, "main");
end

