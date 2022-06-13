close all
clear all
clc
images=[{'cameraman.jpg'}, {'len_std.jpg'},{'ovgu.jpg'},{'tony_cross.jpg'}, {'Bridge.jpg'}];
image_index=2;
greyscale=0;
%% Image Filtering
% First we should read image
I=imread(images{image_index});
%%black white conversation
if (greyscale==1)
%implement formula here
G = rgb2gray(I);
end
I_noise= imnoise(I,'salt & pepper',0.02);
figure
subplot(1,2,1);imshow(I);title('Original Image')
subplot(1,2,2);imshow(I_noise);title('Original image with Salt&Pepper noise')
% act as low-pass filter on image
H = fspecial('gaussian',[3 3],2);
I_filt= imfilter(I,H);
I_filt_nis=imfilter(I_noise,H);
figure
subplot(1,2,1)
imshow(I_filt);title('Gaussian Filter on Original image')
subplot(1,2,2);imshow(I_filt_nis);title('Gaussian Filter on noisy original image')
% high-pass filter
H=fspecial('sobel');
H_1 = transpose(H);
I_filt= imfilter(I,H);
I_filt_nis= imfilter(I_noise,H);
I_filt_1= imfilter(I,H_1);
I_filt_nis_1= imfilter(I_noise,H_1);
figure
subplot(1,2,1)
imshow(I_filt);title('Horizontal Sobel Filter on Original image')
subplot(1,2,2);imshow(I_filt_nis);title('Horizontal Sobel Filter on noisy original image')
figure
subplot(1,2,1)
imshow(I_filt_1);title('Vertical Sobel Filter on Original image')
subplot(1,2,2);imshow(I_filt_nis_1);title('Vertical Sobel Filter on noisy original image')