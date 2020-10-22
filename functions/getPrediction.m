function [ predicted_value ] = getPrediction( predicted_array )
%GETPREDICTION Summary of this function goes here
%   Detailed explanation goes here

max_value_in_array = 0;
predicted_value = 0;
for i = 1:10
    if predicted_array(i) > max_value_in_array
       max_value_in_array = predicted_array(i);
       predicted_value = i;
    end
end

if predicted_value == 10
    predicted_value = 0;
end

end

