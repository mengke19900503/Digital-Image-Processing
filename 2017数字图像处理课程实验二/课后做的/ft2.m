function [] = ft2()
I = imread('mri.tif'); %����ԭͼ���ļ�
subplot(1,2,1),imshow(I) %��ʾԭͼ��
title('ԭͼ��')
J=fft2(double(I)); %��ά��ɢ����Ҷ�任
K = fftshift(J); %ֱ�������Ƶ�Ƶ������
R = real(K); %ȡ����Ҷ�任��ʵ��
I = imag(K); %ȡ����Ҷ�任���鲿
L = sqrt(R.^2+I.^2); %����Ƶ�׷�ֵ
L = (L-min(min(L)))/(max(max(L))-min(min(L)))*256; %��һ��
subplot(1,2,2) %�趨����
imshow(L) %��ʾԭͼ���Ƶ��
title('ԭͼ���Ƶ��')