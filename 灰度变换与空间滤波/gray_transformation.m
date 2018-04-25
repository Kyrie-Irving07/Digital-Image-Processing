image=imread('lena.png');
imshow(image)  % Normal image
wait=input('Normal Image')

% imadjust(image,[low_in, high_in],[low_out, high_out], gamma)
% All inputs should in range 0~1
% If high_out<low_out, the value would be reverse.
% gamma>1 image would be weighted higher
g1=imadjust(image,[0 1],[1 0]);
imshow(g1)
wait=input('Image Reversed')

% imcomplement() can easily reverse the gray value of image
g2=imcomplement(image);
imshow(g2)
wait=input('Image Reversed')

% stretch()
% This MATLAB function returns Low_High, a two-element vector of pixel values that
% specify lower and upper limits that can be used for contrast stretching image I.
g3=imadjust(image,stretchlim(image),[]);
imshow(g3)
wait=input('Image stretched')