function [] = zzlb()
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
            G(x,y) = median([I(x-1,y-1) I(x,y-1) I(x+1,y-1) I(x-1,y) I(x,y) I(x+1,y) I(x-1,y+1) I(x,y+1) I(x+1,y+1)]);
        end
    end
figure,imshow(G) %���ͼ��

% �����ҵ��ĳ������(�ɸ�����ǿ)
% f = imread('F:\matlab_ex\imageProcessing\wx.jpg');  
% [height, width] = size(f);  
% x1 = double(f);  
% x2 = x1;  
% for i = 1:height-n+1  
%     for j = 1:width-n+1  
%         c = x1(i:i+n-1,j:j+n-1);  
%         e = c(1,:);  
%         for k = 2:n  
%             e = [e, c(k, :)];  
%         end  
%         tmp = median(e);  
%         x2(i+(n-1)/2,j+(n-1)/2) = tmp;  
%     end  
% end  
%   
% g = uint8(x2);  
% imshow(g);  