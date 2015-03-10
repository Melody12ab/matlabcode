tic
clear all;
clc
A=imread('附件3 距2400m处的数字高程图.tif');
B=imread('附件4 距月面100m处的数字高程图.tif');
A(31:776,1519:2280)=255;
hang=31+(776-31)/2;
lie=1519+(2280-1519)/2;
A(floor(hang):ceil(hang),:)=0;
A(:,floor(lie):ceil(lie))=0;
juli=sqrt((1150-hang)^2+(lie-1150)^2);
jingbizhang=vpa(juli)  %粗蔽障距离
imtool(A);


B(17:279,197:500)=255;
hang1=17+(279-17)/2;
lie1=197+(500-197)/2;
B(floor(hang1):ceil(hang1),:)=0;
B(:,floor(lie1):ceil(lie1))=0;
juli1=sqrt((500-hang1)^2+(lie1-500)^2)/10;
jingbizhang=vpa(juli1)  %精壁障距离
imtool(B);

% jingbizhang =
% 1057.8338716452597054740181192756
% jingbizhang =
% 38.321827983539616112898577832577
toc
