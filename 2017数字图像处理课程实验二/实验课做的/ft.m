function [] = ft()
I = imread('at3_1m4_04.tif');
figure,imshow(I) %���ļ�����ʾ
J = fft2(double(I)); %����Ҷ�任
figure,imshow(J)
K = fftshift(J);
figure,imshow(K) %Ƶ�Ʋ���ʾ
L = ifft2(J)/256; %ֱ�Ӹ���Ҷ���任
figure,imshow(L)
M = ifft2(2*sqrt(J.*conj(J)))/256; %���ȸ���Ҷ���任
figure,imshow(M)
N = ifft2(abs(angle(J))*256); %��λ����Ҷ���任
figure,imshow(N)