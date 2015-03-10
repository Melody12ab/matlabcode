clear all;clc
xydata=xlsread('demo01.xlsx');
xdata=xydata(:,2);
ydata=xydata(:,3);
zdata=xydata(:,1);
%plot(xdata,ydata);
data=[xdata';ydata';zdata']';
save D:\matlabcode\2011B\demo01 xdata ydata zdata data

xyzuobiao=xlsread('demo02.xlsx');
xzuo=xyzuobiao(:,1);
yzuo=xyzuobiao(:,2);
save D:\matlabcode\2011B\demo02 xzuo yzuo


