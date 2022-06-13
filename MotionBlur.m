close all
clear all
clc
%List of images used
images=[{'cameraman.jpg'}, {'len_std.jpg'}];
image_index=1; %Pointer to choose image
%% Image Filtering
I=imread(images{image_index}); %Command to read image
H = fspecial('motion',20,0); %Motion filter creation, fspecial('motion', len,theta);
%len - length of motion, theta - angle of motion
I_filt= imfilter(I,H); %Adding filter to original image
figure(1)
subplot(1,2,1)
imshow(I);title('Original Image') %Plotting original image
subplot(1,2,2);imshow(I_filt);title('Motion Filter on original image') %plotting filtered original image