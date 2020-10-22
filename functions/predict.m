function [ predicted_array ] = predict(index, test_data, network)
%PREDICTVALUE Summary of this function goes here
%   Detailed explanation goes here

    selected_number = test_data(:,index);
    predicted_array = network(selected_number);

end

