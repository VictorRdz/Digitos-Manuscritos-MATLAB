%% Parametros que se utilizaran para el proyecto
% 20x20 Input Images of Digits ... hecho
% 25 hidden units ... hecho
% 10 labels, from 1 to 10 ... hecho 
                          
%% =========== Proyecto Final =============

% Mensajes de inicio
clear ; close all; clc
fprintf("Para ver version grafica, abrir 'ProyectoFinal_GUI.mlapp'\n");
fprintf("------------------------------------------\n");
fprintf("En caso de error, recuerde añadir las carpetas 'functions' y 'temp' a Path\n");
fprintf("------------------------------------------\n");

% Inicializar los datos basicos
[input_data, target_data, network] = initializeData();
fprintf("Inicio\n");
fprintf("------------------------------------------\n");

% Obtener los 100 numeros aleatorios
[test_data, image] = generateTestData(input_data);
imshow(image);

% Predecir los 100 numeros
for i = 1:100
    predicted_array = predict(i, test_data, network);
    predicted_value = getPrediction(predicted_array);
    fprintf("Imagen %d de 100 - Output: %d\n", i, predicted_value);
    figure, bar(1:10, predicted_array);
    pause; % Intoducir enter en la consola para el siguiente...
end

% Fin del script
fprintf("------------------------------------------\n");
fprintf("Fin del script\n");


%{
    Para obtener el array de predicción utilizar el siguiente comando:
        predict(i, test_data, network)
    donde 1 >= i <= 100 (i = numero de la imagen)

    Para obtener el valor de la predicción utilizar:
        getPrediction(predict(i, test_data, network))
    donde 1 >= i <= 100 (i = numero de la imagen)
%}