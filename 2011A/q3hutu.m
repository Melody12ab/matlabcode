tic
xyzdata=xlsread('demo01.xlsx','sheet1');
xydata=xlsread('demo01.xlsx','��׼��');

clearall=xlsread('demo01.xlsx','û��Ⱦ');
clear1=clearall(:,1);
clear2=clearall(:,2);

data1=xyzdata(:,15);

xdata=xyzdata(:,1);
ydata=xyzdata(:,2);
x=1:100:28654;
y=1:100:18449;
[X,Y,Z]=griddata(xdata,ydata,data1,x,y','cubic');%��ֵ
contourf(X,Y,Z) %�ȸ���ͼ
hold on
plot(xdata,ydata,'r*')
hold on
plot(clear1,clear2,'w*')
hold off
toc

