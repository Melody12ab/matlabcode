tic
xyzdata=xlsread('demo01.xlsx');
xdata=xyzdata(:,1);
ydata=xyzdata(:,2);
zdata=xyzdata(:,15);
x=1:100:28654;
y=1:100:18449;

%scatter(xdata,ydata,5,zdata) %散点图
[X,Y,Z]=griddata(xdata,ydata,zdata,x,y','v4'); %插值
%pcolor(X,Y,Z);%伪彩色
contourf(X,Y,Z) %等高线图
%colormap autumn
%surf(X,Y,Z) %三位曲面图
%mesh(X,Y,Z)  %[Xi,Yi] = meshgrid(xi,yi);	网格图
hold on
plot(xdata(22),ydata(22),'w*')
text(xdata(22),ydata(22),'22')

plot(xdata(9),ydata(9),'w*')
text(xdata(9),ydata(9),'9')

plot(xdata(8),ydata(8),'w*')
text(xdata(8),ydata(8),'8')

plot(xdata(84),ydata(84),'w*')
text(xdata(84),ydata(84),'84')

plot(xdata(178),ydata(178),'w*')
text(xdata(178),ydata(178),'178')

plot(xdata(29),ydata(29),'w*')
text(xdata(29),ydata(29),'29')

plot(xdata(20),ydata(20),'w*')
text(xdata(20),ydata(20),'20')

plot(xdata(182),ydata(182),'w*')
text(xdata(182),ydata(182),'182')

plot(xdata(257),ydata(257),'w*')
text(xdata(257),ydata(257),'257')

plot(xdata(135),ydata(135),'w*')
text(xdata(135),ydata(135),'135')

plot(xdata(16),ydata(16),'w*')
text(xdata(16),ydata(16),'16')

plot(xdata(6),ydata(6),'w*')
text(xdata(6),ydata(6),'6')

plot(xdata(61),ydata(61),'w*')
text(xdata(61),ydata(61),'61')

plot(xdata(36),ydata(36),'w*')
text(xdata(36),ydata(36),'36')
hold off
toc