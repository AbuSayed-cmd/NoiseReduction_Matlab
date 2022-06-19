# NoiseReduction_Matlab
This project is aimed for the reduction of noise of image with the help of different filteration method such as Gaussian Filteration, Sobel filteration and Weighted median filteration Method.
## Image as a Signal
In this section, we have represented an Image as signal. An image is a signal and it is defined as a two-dimensional function, F(x,y), where x and y are spatial
coordinates and the amplitude of F at any pair of coordinates (x,y) is called the intensity of that image at that point. In other words,an image can be defined 
by a two-dimensional array specifically arranged in rows and columns. In order to create a digital image, we have to convert signals into a digital form. This involves sampling and quantization. The result of sampling and quantization results in a two-dimensional array or matrix of numbers which are nothing but a digital image.

```
images=[{'cameraman.jpg'}, {'len_std.jpg'},{'ovgu.jpg'}];
image_index=2;
greyscale=1;
%% Image Filtering
% First we should read image
I=imread(images{image_index});
%%black white conversation
if (greyscale==1)
%implement formula here
G = rgb2gray(I)
end
```

At the beginning of the code we declare a list of images, then we read the image using imread() function and store the output array on variable I. After that, we converted the image from RGB to greyscale using RGB to gray() function.

## Low pass filter and high pass filter
In the field of image processing, filtering is an important technique used to manipulate the image. An image can be filtered in many aspects like sharpening, smoothing, noise reduction and edge enhancements. A filter can be described by kernel which consists of a small array takes account to each pixel and its neighboring pixels. Therefore, we can say that different type of the algorith m generates different types of kernels and it filtered the image in various types. For instance, to blur the image, to change the brightness, etc.
### Low pass Filter (LPF): 
A lowpass filter is considered essential for most of the smoothing system. An image can be smoothed by declining the disparity between pixel values by averaging neighboring pixels. A LPF tends to hold the low frequency information of an image and at the same time i t will reduce the high frequency components of an image. In this project, Gaussian filter is used as a LPF.
### Gaussian Filter:
It is defined by a weighted average of each pixel’s neighboring pixel, with the average weighted more towards the value of the central pixel, This algorithm is useful for blur image and noise removing.
### High pass Filter (HPF): 
A HPF retain high frequency components and reduce low frequency components within an image, it is used for sharpening control of an image. In t his exercise, obel filter is used as a HPF.

### Implemneting Gaussian Filter as a Low Pass filter and Sobel filter as a High Pass filter.

```
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
```
At first we created a list of all images to which we will apply the filtering. In this exercise we add two extra images for example ‘tony_cross.jpg’ and ‘Bridge.jpg’. From the matlab code, we can see that salt and pepper noise is added by using “imnoise ” function. Then we apply Gaussian filter on original image and noisy original image . In addition, the “imfilter” function filters the multidimensional array with the multidimensional filter . Lastly we used sobe l filter on original and noisy image.

Please check the all code files and reports to understand the whole project. 
