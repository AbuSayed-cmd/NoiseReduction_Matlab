%% This Function will convert a color image into a grayscale image
function [gray] = RgbToGray(img)
R=img(:, :, 1) % Extracting Red color element to R
G=img(:, :, 2) % Extracting Green color element to G
B=img(:, :, 3) % Extracting Blue colour component to B
[M, N, ~]=size(img); % Defining rows in M and column in N of RGB image % matrix
% size(img) function will return row, column and % dimension of the RGB image
%% calculating grayscale values by forming a weighted sum of the R,G,and B elements for each pixel
for i=1:M
for j=1:N
% creating a new 2-d matrix 'gray' of size M*N of 'uint8'
% data type to ensure all number being unsigned
% The coefficients that are used to calculate grayscale % values are from luminance (E‟y) in Rec. ITU-R BT.601-7
gray(i, j)=uint8((R(i, j)*0.2989)+(G(i, j)*0.5870)+(B(i, j)*0.114));
end
end
end
>> img=imread('len_std.jpg'); % Read coloured input image
>> I=RgbToGray(img); % Convert RGB image to gray scale image
>>imshow(I); % Show grayscale image
>> size(img) % Show size of orginal RGB image
ans =
256 256 3
>> size(I)% Show size of orginal RGB image
ans =
256 256