load chu  %319*319
xydata=xlsread('demo01.xlsx');
xdata=xyzdata(:,1);
ydata=xyzdata(:,2);
zdata=xyzdata(:,15);
b=xydata(:,6:13);
x=1:100:28654;
y=1:100:18449;
[x,y,z]=griddata(xdata,ydata,zdata,x,y','v4');

shuru=input('请输入一个数值:');
for i=1:319
    tmp=sum(chu(i,:));
    for j=1:319
        chu(i,j)=chu(i,j)/tmp*shuru;
    end
end
for i=1:319
    for j=1:319
        if i==j
            chu(i,j)=(1-shuru);
        end
    end
end
a=chu;
x1=a\b;
[s,i]=sort(x1,1,'descend');
wuranyuan=i(1:2,:);
contourf(x,y,z)
wuranyuan1=wuranyuan(:);
hold on
for i=wuranyuan1
    plot(xdata(i),ydata(i),'w*')
    text(xdata(i),ydata(i),num2str(i),'edgecolor','red','linewidth',3);
end
%size(x)
