function [] = xz(angle)
%angleΪ��ʱ����ת�Ƕ�
I = imread('cameraman.tif'); %��ȡͼ��
% subplot(1,2,1),imshow(I); %���ͼ��
% title('ԭʼͼ��'); %��ԭʼͼ���мӱ���
J = imrotate(I,angle);
figure,imshow(J);
title({['��ʱ����ת',num2str(angle),'����ͼ��']}); %�����ź��ͼ���ϼӱ���

%��������д�ˣ�����ԱӦ�þ��������ظ���������(Don't reinvent the wheel)��
%����ת����ֳ��ֱ���ɫ�Ĺ���������Ϊ�����ӳ���޷�ʹ����������
%��3*3�������ĵ�İ˸����ص��ֵ�˲�ͼ�񲿷ּ��ɽ����