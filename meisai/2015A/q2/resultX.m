clear
clc
tic
xydata=xlsread('result.xlsx');
xdata=xydata(:,4);
ydata=xydata(:,5);
yaowu=xydata(:,3);
wangge=zeros(max(xdata),max(ydata));
% for i=1:20
%     wangge(xdata(i),ydata(i))=yaowu(i);
% end
result=[];
minx=1;
miny=1;
zuixiao=realmax;
for i=1:max(xdata)
    for j=1:max(ydata)
        for k=1:20
            juli=sqrt((xdata(k)-i)^2+(ydata(k)-j)^2);
            result=[result juli];
        end
        temp=result*yaowu;
        if temp<zuixiao
            zuixiao=temp;
            minx=i;
            miny=j;
        end 
        result=[];
    end
end
minx*1000
miny*1000
zuixiao
toc