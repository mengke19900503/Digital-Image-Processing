function [] = yzfg()
I = imread('eight.tif');
BW = imbinarize(I);     % BW = im2bw(I,graythresh(I));
figure, imshowpair(I,BW,'montage')

% ����Ϊ R2016a ֮ǰ�汾�ĳ���
% I = imread('eight.tif');
% level = graythresh(I)     %���� otsu(�����䷽�) �㷨
% BW = im2bw(I,level);
% imshow(BW)