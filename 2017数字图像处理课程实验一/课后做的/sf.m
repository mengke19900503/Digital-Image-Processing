function [] = sf(x)
I = imread('cameraman.tif');%��ȡͼ��
[m,n] = size(I);
figure,imshow(I); %���ͼ��
title({['ԭʼͼ�񣺳�',num2str(m),'���أ���',num2str(n),'����']}); %��ԭʼͼ���мӱ���
J = imresize(I,x); %ͼ������x��
[m,n] = size(J);
figure,imshow(J); %������ź��ͼ��
title({['����',num2str(x),'�����ͼ�񣺳�',num2str(m),'���أ���',num2str(n),'����']}); %�����ź��ͼ���ϼӱ���

%��������д�ˣ�����ԱӦ�þ��������ظ���������(Don't reinvent the wheel)���ܿ�����ֵ�㷨�ͺ���