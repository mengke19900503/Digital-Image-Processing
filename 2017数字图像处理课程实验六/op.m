function [] = op()
I=imread('rectangel.tif');
subplot(1,2,1),imshow(I);
title('ԭͼ');
BW=I;
BW=rgb2gray(BW);
SE=strel('square',10);%�ṹԪ��Ϊ�߳�10���ص�������
BW=imopen(BW,SE); %������
BW=imclose(BW,SE); %������
subplot(1,2,2),imshow(BW);
title('�����');