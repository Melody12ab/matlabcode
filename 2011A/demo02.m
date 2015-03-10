xyzdata=xlsread('demo01.xlsx');
xdata=xyzdata(:,1);
ydata=xyzdata(:,2);
plot(xdata,ydata,'b.')

for i=1:319
    text(xdata(i),ydata(i),sprintf('%d',i));
end
