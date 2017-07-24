function []=IHPF(inputimage,D0)
%D0 Ϊ�����ֹƵ�ʣ�inputimage Ϊ����ͼ��
I=imread(inputimage);%����ͼ��
h=figure;
set(h,'name','�����ͨ�˲�ͼ','Numbertitle','off')
subplot(1,2,1),imshow(I);
title('ԭͼ');
f=double(I); % ����MATLAB ��֧��unsigned int ��ͼ����㣬�ʽ�ͼ�����ݱ�Ϊdouble ��
g=fft2(f); % ����Ҷ�任
g=fftshift(g); % ������Ҷ�仯��Ƶ�ʰ��Ƶ�Ƶ���м�
[M,N]=size(g); % ȷ��ͼ���С,M Ϊ������N Ϊ����
m=fix(M/2); n=fix(N/2);% ȷ������Ҷ�仯ԭ�㣨��ֱ�����֣�������������0 ȡ��
result=zeros(M,N);
for i=1:1:M
for j=1:1:N
d=sqrt((i-m)^2+(j-n)^2);%����D(u��v)
if(d<=D0)
h=0;%���D(u��v)<=D0, H(u,v)=0
else
h=1;%���D(u��v)>D0, H(u,v)=1
end
h = h + 0.5;
result(i,j)=h*g(i,j);
end
end
result=ifftshift(result);% ����Ҷ����Ƶ������֮ǰ����fftshift
J1=ifft2(result);% ����Ҷ���任
J2=uint8(real(J1));%��ȡJ1 ��ʵ��,���������ݶ���Ϊ8 λ�޷�������
subplot(1,2,2),imshow(J2) ;
title('�����ͨ�˲�ͼ');