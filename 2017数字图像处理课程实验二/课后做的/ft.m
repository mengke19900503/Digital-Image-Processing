function [] = ft()
I = imread('at3_1m4_04.tif');
subplot(2,3,1),imshow(I) %���ļ�����ʾ
title('ԭʼͼ��')
J = fft2(double(I)); %����Ҷ�任
subplot(2,3,2),imshow(imag(J))
title('����Ҷ�任')
K = imag(fftshift(J));
subplot(2,3,3),imshow(K) %Ƶ�Ʋ���ʾ
title('Ƶ�Ʋ���ʾ')
L = ifft2(J)/256; %ֱ�Ӹ���Ҷ���任
subplot(2,3,4),imshow(L)
title('ֱ�Ӹ���Ҷ���任')
M = ifft2(sqrt(real(J).^2+imag(J).^2))/256; %���ȸ���Ҷ���任
subplot(2,3,5),imshow(M)
title('���ȸ���Ҷ���任')
N = abs(ifft2(ifftshift(angle(K))));%��λ����Ҷ���任
N = (N-min(min(N)))/(max(max(N))-min(min(N)))*256; %��һ��
subplot(2,3,6),imshow(N)
title('��λ����Ҷ���任')