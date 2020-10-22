function [ image ] = saveImage(image_array, title )
%SAVEIMAGE Summary of this function goes here
%   Detailed explanation goes here

title = "temp/" + title + ".png";
imwrite(ind2rgb(im2uint8(mat2gray(image_array)), gray(256)), char(title));
image = imread(char(title));
end

