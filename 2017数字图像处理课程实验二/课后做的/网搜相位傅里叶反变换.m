function [] = fttt()
f = zeros(64,64);
for j=1:5
   f(:,j*10:j*10+1)=1;
end
F=fft2(f);Fc=fftshift(F);
F1=ifft(angle(F));Fc1=ifftshift(F1);
F2=fft2(F);Fc2=fftshift(F2);
figure,
subplot(2,2,1),imshow(f,[ ]);title('ԭʼͼ��');
subplot(2,2,2),imshow(abs(Fc),[ ]);title('ͼ����Ҷ�任');
subplot(2,2,3),imshow(abs(Fc1),[ ]);title('����Ҷ��λ�׽��и���Ҷ���任');
subplot(2,2,4),imshow(abs(Fc2),[]);title('����Ҷ�任�ٽ��и���Ҷ�任');