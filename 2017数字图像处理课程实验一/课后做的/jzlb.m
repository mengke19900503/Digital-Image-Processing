function [] = jzlb()
lb('gaussian.tif')
title('��˹������3��3��ֵ�˲����ͼ��') %�ڸ�˹����ͼ���мӱ���
lb('salt & pepper.tif')
title('����������3��3��ֵ�˲����ͼ��') %�ڽ�������ͼ���мӱ���
function [] = lb(x)
I = imread(x);%��ȡͼ��
if size(I,3)>1 %�ж�����ǲ�ɫͼ��
    I = rgb2gray(I);%��ͼ��תΪ��ά�Ҷ�ͼ��
end
[m,n] = size(I);
    for x = 2 : (m-1)
        for y = 2 : (n-1)
            G(x,y) = mean([I(x-1,y-1) I(x,y-1) I(x+1,y-1) I(x-1,y) I(x,y) I(x+1,y) I(x-1,y+1) I(x,y+1) I(x+1,y+1)]);
        end
    end
G = G / 256;
figure,imshow(G) %���ͼ��

% �����ҵ�����ģ��.*�İ취��������ĳ�����룬���������������ռ�ƽ���Ϳռ�����ģ��(�ɸ�����ǿ)
% f = imread('gaussian.tif');  
% n = 3;  
% template = ones(n);  
% [height, width] = size(f);  
% x1 = double(f);  
% x2 = x1;  
% for i = 1:height-n+1  
%     for j = 1:width-n+1  
%         c = x1(i:i+n-1,j:j+n-1).*template;  
%         s = sum(sum(c));  
%         x2(i+(n-1)/2,j+(n-1)/2) = s/(n*n);  
%     end  
% end  
%   
% g = uint8(x2);  
% imshow(g);  