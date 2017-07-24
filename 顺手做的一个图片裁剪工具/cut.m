function [] = cut()
clear;
srcDir=uigetdir('Choose source directory.'); %���ѡ����ļ���
cd(srcDir);
allnames=struct2cell(dir('*.jpg')); %ֻ����8λ��jpg�ļ�
[k,len]=size(allnames); %���jpg�ļ��ĸ���
for ii=1:len
%���ȡ���ļ�
name=allnames{1,ii};
I=imread(name); %��ȡ�ļ�
%----------ͼ�������----------
[x,y,z] = size(I);
n = 1;
a = 1;
b = y / 9 * 16;
while x > b
    J = I(a:b,1:y,1:z);
    a = b + 1;
    b = b + y / 9 * 16;
    imwrite(J,[name,num2str(n),'.jpg']);
    n = n + 1;
end
J = I(a:x,1:y,1:z);
imwrite(J,[name,num2str(n),'.jpg']);
%----------ͼ�������----------
end