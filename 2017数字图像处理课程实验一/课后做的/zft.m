function [] = zft()
I = imread('cameraman.tif'); %��ȡͼ��
subplot(1,2,1),imshow(I) %���ͼ��
title('ԭʼͼ��') %��ԭʼͼ���мӱ���

%J = imhist(I); %����ֱ��ͼ���㷨��ʽ��vi=ni/n(�α�P25)���ȼ������´����
[m,n] = size(I); %����ͼ���С
J = zeros(1,256); %��ʼ��ֱ��ͼ����
for k = 0 : 255 %���ûҶȼ�
    for i = 1 : m
        for j = 1 : n
            if I(i,j) == k
                J(k+1) = J(k+1) + 1; %�Ҷ�ֵ��ͬ�Ľ����ۼ�
            end
        end
    end
end

subplot(1,2,2),bar(J) %���ԭͼֱ��ͼ
title('ԭʼͼ��ֱ��ͼ') %��ԭͼֱ��ͼ�ϼӱ���