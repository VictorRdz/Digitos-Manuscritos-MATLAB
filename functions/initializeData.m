function [input_data, target_data, network] = initializeData()
%INITIALIZEDATA Summary of this function goes here
%   Detailed explanation goes here

load('datos_entrenamiento.mat');
load('net.mat');
input_data = X.';
target_data = fixTargetData(y.');
network = net;

end

