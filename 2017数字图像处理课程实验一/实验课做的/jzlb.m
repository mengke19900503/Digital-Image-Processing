function [] = jzlb()
I=imread('gaussian.tif');%��ȡͼ��
G=fspecial('average',[3 3]);%��ֵ�˲���
Average1=imfilter(I,G,'replicate');
subplot(1,2,1),imshow(Average1) %���ͼ��
title('��˹����ͼ��') %�ڸ�˹����ͼ���мӱ���
J=imread('salt & pepper.tif');%��ȡͼ��
H=fspecial('average',[3 3]);%��ֵ�˲���
Average2=imfilter(J,H,'replicate');
subplot(1,2,2),imshow(Average2) %���ͼ��
title('��������ͼ��') %�ڽ�������ͼ���мӱ���