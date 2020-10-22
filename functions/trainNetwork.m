function [ net ] = trainNetwork( input_data, target_data, network, capaOculta, fEntrenamiento, fRendimiento, pEntrenamiento, pValidacion, pPrueba, maxFallos )
%TRAINNETWORK Summary of this function goes here
%   Detailed explanation goes here
x = input_data;
t = target_data;

net = patternnet(capaOculta, fEntrenamiento, fRendimiento);

net.divideFcn = 'dividerand';
net.divideMode = 'sample';
net.divideParam.trainRatio = pEntrenamiento;
net.divideParam.valRatio = pValidacion;
net.divideParam.testRatio = pPrueba;

net.trainParam.max_fail = maxFallos;

net = train(net,x,t);

end

