tic
xyzdata=xlsread('demo01.xlsx');
xdata=xyzdata(:,1);
ydata=xyzdata(:,2);
zdata=xyzdata(:,4);
x=1:100:28654;
y=1:100:18449;

[X,Y,Z]=griddata(xdata,ydata,zdata,x,y','v4'); %插值
for i=1:185
    for j=1:287
        if Z(i,j)>=4.9
            Z(i,j)=5;
        end
        if Z(i,j)>=3.2 & Z(i,j)<4.9
            Z(i,j)=4;
        end
        if Z(i,j)>=2.1 & Z(i,j)<3.2
            Z(i,j)=3;
        end
        if Z(i,j)>=1.5 & Z(i,j)<2.1
            Z(i,j)=2;
        end
        if Z(i,j)<1.5
            Z(i,j)=1;
        end
    end
end
for i=1:185
    for j=1:287
        if Z(i,j)==1
            Z(i,j)=3.1;
        end
        if Z(i,j)==3
            Z(i,j)=1;
        end
        if Z(i,j)==3.1
            Z(i,j)=3;
        end
        if Z(i,j)==3
            Z(i,j)=4.1;
        end
        if Z(i,j)==4
            Z(i,j)=3;
        end
        if Z(i,j)==4.1
            Z(i,j)=4;
        end
    end
end


contourf(X,Y,Z) %等高线图
%colormap winter
hold on 
text(xdata(20),ydata(20),sprintf('%d',20));
plot(xdata(20),ydata(20),'w*');
text(xdata(135),ydata(135),sprintf('%d',135));
plot(xdata(135),ydata(135),'w*');
text(xdata(143),ydata(143),sprintf('%d',143));
plot(xdata(143),ydata(143),'w*');
text(xdata(23),ydata(23),sprintf('%d',23));
plot(xdata(23),ydata(23),'w*');
text(xdata(310),ydata(310),sprintf('%d',310));
plot(xdata(310),ydata(310),'w*');
text(xdata(128),ydata(128),sprintf('%d',128));
plot(xdata(128),ydata(128),'w*');
text(xdata(309),ydata(309),sprintf('%d',309));
plot(xdata(309),ydata(309),'w*');
text(xdata(42),ydata(42),sprintf('%d',42));
plot(xdata(42),ydata(42),'w*');
text(xdata(154),ydata(154),sprintf('%d',154));
plot(xdata(154),ydata(154),'w*');
text(xdata(253),ydata(253),sprintf('%d',253));
plot(xdata(253),ydata(253),'w*');
text(xdata(273),ydata(273),sprintf('%d',273));
plot(xdata(273),ydata(273),'w*');
hold off
toc