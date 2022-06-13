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