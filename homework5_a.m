% -------------------------------------------------------------------
%  Generated by MATLAB on 24-Jan-2015 9:11:03
%  MATLAB version: 8.4.0.150421 (R2014b)
% -------------------------------------------------------------------
clear
close all
clc
IMage = imread('//5.tif');
imtool(IMage);
%未使用自带函数实现均值滤波
n=3;
a(1:n,1:n)=1;                    
p=size(IMage);                         
x1=double(IMage);
x2=x1;
                                                  
for i=1:p(1)-n+1
    for j=1:p(2)-n+1
        c=x1(i:i+(n-1),j:j+(n-1)).*a;    
        s=sum(sum(c));                     
        x2(i+(n-1)/2,j+(n-1)/2)=s/(n*n); 
    end
end
%未被赋值的元素取原值
Fave=uint8(x2);
imtool(Fave);



