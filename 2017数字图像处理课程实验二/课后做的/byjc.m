function [] = byjc()
i = imread('cameraman.tif');
j = edge(i,'sobel');
k = edge(i,'prewitt');
l = edge(i,'log');
subplot(2,2,1),imshow(i);
title('cameraman')
subplot(2,2,2),imshow(j);
title('sobel')
subplot(2,2,3),imshow(k);
title('prewitt')
subplot(2,2,4),imshow(l);
title('log')

% ������д��j = edge(i,'sobel'); ������������sobel�������ơ�
% for a = 2 : m-1
%     for b = 2 : n-1
%         jx(a,b) = i(a+1,b-1) + 2*i(a+1,b) + i(a+1,b+1) - i(a-1,b-1) - 2*i(a-1,b) - i(a-1,b+1);
%         jy(a,b) = i(a-1,b+1) + 2*i(a,b+1) + i(a+1,b+1) - i(a-1,b-1) - 2*i(a,b-1) - i(a+1,b-1);
%         grad = max([abs(jx(a,b)),abs(jy(a,b))]);
%         if(grad>=thresh) %threshΪ�ҶȲ����ֵ
%             j(a,b) = 1;
%         else
%             j(a,b) = 0;
%         end
%     end
% end
