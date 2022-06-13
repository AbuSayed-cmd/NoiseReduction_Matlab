close all
clear all
clc
%List of images used
images=[{'cameraman.jpg'}, {'len_std.jpg'}];
image_index=2; %Pointer to choose image
greyscale=0; %Flag to set/reset grayscale
%% Image Filtering
I=imread(images{image_index}); %Command to read image
%%Black white conversation
if (greyscale==1)
G=rgb2gray(I);
figure(1)
subplot(1,2,1);imshow(I);title('Original Image')
subplot(1,2,2);imshow(G);title('Gray scale Image')
end
%Logic to implement smoothing filter by averaging
imageSize=size(I); % Command to get the size of the image in row and column
n=3; %Size of a square block of pixels
I_smooth = I;
for i=n+1:imageSize(1)-(n+1) %Defining row width
for j=n+1:imageSize(2)-(n+1) %Defining column length
sum = 0;
for t=-n+1:n+1 %Block's row size
for r=-n+1:n+1 %Block's column size
sum = sum + int16(I(i+t,j+t)); %Summing the pixel values
end
end
I_avg=sum/((2*n+1)^2); %Average of the summed values
I_smooth(i,j) = I_avg; %Average of the values assigned to the centre pixel
end
end
figure(1)
subplot(1,2,1);imshow(I);title('Original Image')
subplot(1,2,2);imshow(I_smooth);title('Smoothed Image')