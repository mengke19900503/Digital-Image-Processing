function [] = hdjh()
I=imread('cameraman.tif');%��ȡͼ��
subplot(2,2,1),imshow(I) %���ͼ��
title('ԭʼͼ��') %��ԭʼͼ���мӱ���
subplot(2,2,2),imhist(I) %���ԭͼֱ��ͼ
title('ԭʼͼ��ֱ��ͼ') %��ԭͼֱ��ͼ�ϼӱ���
J=histeq(I,256);%ֱ��ͼ���⻯���Ҷȼ�Ϊ256
subplot(2,2,3),imshow(J)%������⻯��ͼ��
title('���⻯��ͼ��')%�ھ��⻯��ͼ���мӱ���
subplot(2,2,4),imhist(J) %������⻯��ֱ��ͼ
title('���⻯��ֱ��ͼ') %�ھ��⻯��ֱ��ͼ�ϼӱ���