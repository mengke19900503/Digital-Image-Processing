function [] = by()
%��Ե��������ҵ��Ĵ��룬���ɵ��Ǵ���Ե���ĻҶ�ͼ��������ȡ��Ե�Ķ�ֵͼ��
im = imread('cameraman.tif');  %��ȡ�ؼ�֡
subplot(131);imshow(im);title('ԭͼ');
[high,width] = size(im);   % ���ͼ��ĸ߶ȺͿ��
U = double(im);         
uSobel = im;
for i = 2:high - 1   %sobel��Ե���
    for j = 2:width - 1
        Gx = (U(i+1,j-1) + 2*U(i+1,j) + U(i+1,j+1)) - (U(i-1,j-1) + 2*U(i-1,j) + U(i-1,j+1));
        Gy = (U(i-1,j+1) + 2*U(i,j+1) + U(i+1,j+1)) - (U(i-1,j-1) + 2*U(i,j-1) + U(i+1,j-1));
        uSobel(i,j) = sqrt(Gx^2 + Gy^2); 
    end
end 
subplot(132);imshow(im2uint8(uSobel));title('��Ե����');  %������Ե�����ͼ��
% Matlab�Դ�������Ե���
% KΪ��ȡ�õ��Ĺؼ�֡�ĻҶ�ͼ
BW3 = edge(im,'sobel');
subplot(133);imshow(BW3,[]);title('Matlab�Դ�������Ե���');