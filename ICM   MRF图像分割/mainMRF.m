clc
clear

pic_name = 'EUSAR2006-home-E-SAR-image.jpg';
pic_path = 'ʵ����Ƭ\';figure;
imshow(pic_name);
%��ȡͼ��11.3
I=imread(strcat(pic_path,pic_name));
I=double(I);
%�趨�������
class_number=3;
potential=0.2;
maxiter=50;
%ִ��ICM�㷨
seg=ICM(I,class_number,potential,maxiter);




%����ָ���
save_path='ʵ����\';
imwrite(mat2gray(seg),strcat(save_path,pic_name));
figure;
imshow(mat2gray(seg));