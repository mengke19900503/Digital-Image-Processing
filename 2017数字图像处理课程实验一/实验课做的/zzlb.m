function [] = zzlb()
I = imread('gaussian.tif');%��ȡͼ��
G = medfilt2(I,[3 3]);%��ֵ�˲���
subplot(1,2,1),imshow(G) %���ͼ��
title('��˹����ͼ��') %�ڸ�˹����ͼ���мӱ���
J = imread('salt & pepper.tif');%��ȡͼ��
H = medfilt2(J,[3 3]);%��ֵ�˲���
subplot(1,2,2),imshow(H) %���ͼ��
title('��������ͼ��') %�ڽ�������ͼ���мӱ���