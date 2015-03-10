tic
xyzdata=xlsread('demo01.xlsx');
xdata=xyzdata(:,1);
ydata=xyzdata(:,2);
chu=zeros(319);
for i=1:319
    for j=1:319
        chu(i,j)=sqrt((xdata(i)-xdata(j))^2+(ydata(i)-ydata(j))^2);
    end
end
save chu 
toc