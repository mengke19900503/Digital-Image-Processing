function [] = fs()
I=imread('finger.tif');
subplot(1,2,1),imshow(I);
title('ԭͼ');
BW=I;
BW=rgb2gray(BW);
SE=strel('square',2); %�ṹԪ��Ϊ�߳�2���ص�������
BW=imopen(BW,SE); %�����㣨�ȸ�ʴ�����ͣ���������С���塢����ϸ�㴦�������塢ƽ���ϴ�����ı߽硣
%BW=imerode(BW,SE); %��ʴ
%BW=medfilt2(BW,[3 3]); %��ֵ�˲�(��ʴ����ֵ�˲����ܵ��±������ӵ�ָ�ƶϿ�)
%BW=imdilate(BW,SE); %����

%BW=imclose(BW,SE); %�����㣨�������ٸ�ʴ���ܹ��ų�С�ͺڶ�(��ɫ����)��
BW=imdilate(BW,SE); %����
BW=medfilt2(BW,[3 3]); %��ֵ�˲������ͺ���ֵ�˲����ܵ���ָ��ͼ������ȥ�����ɾ���
BW=imerode(BW,SE); %��ʴ
subplot(1,2,2),imshow(BW);
title('�����');
%BW=bwmorph(BW,'thin',Inf); %�Ǽܻ�
%figure,imshow(BW);
%title('�Ǽܻ�');