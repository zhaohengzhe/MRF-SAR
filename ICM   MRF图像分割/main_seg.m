clc
clear
%pic_name = 'RS-B.bmp'
I=imread('EUSAR2006-home-E-SAR-image.jpg');
I=double(I);
% figure;
% imshow(pic_name);
class_number=2;
potential=0.5;
maxIter=30;
seg=ICM(I,class_number,potential,maxIter);
figure;
imshow(I);