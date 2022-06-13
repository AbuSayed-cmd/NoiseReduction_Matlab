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
