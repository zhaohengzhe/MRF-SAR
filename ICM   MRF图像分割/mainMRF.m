clc
clear

pic_name = 'EUSAR2006-home-E-SAR-image.jpg';
pic_path = '实验照片\';figure;
imshow(pic_name);
%读取图像11.3
I=imread(strcat(pic_path,pic_name));
I=double(I);
%设定分类参数
class_number=3;
potential=0.2;
maxiter=50;
%执行ICM算法
seg=ICM(I,class_number,potential,maxiter);




%保存分割结果
save_path='实验结果\';
imwrite(mat2gray(seg),strcat(save_path,pic_name));
figure;
imshow(mat2gray(seg));