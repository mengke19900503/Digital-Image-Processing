function [] = sf(x)
I=imread('cameraman.tif');%��ȡͼ��
figure,imshow(I); %���ͼ��
title('ԭʼͼ��'); %��ԭʼͼ���мӱ���
J=imresize(I,x); %ͼ������x��
figure,imshow(J); %������ź��ͼ��
title('���ź��ͼ��'); %�����ź��ͼ���ϼӱ���