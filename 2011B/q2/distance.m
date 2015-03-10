function distance=jisuan(a,b)
load demo01
ah=find(zdata==a);
bh=find(zdata==b);
x1=data(ah,1);
x2=data(bh,1);
y1=data(ah,2);
y2=data(bh,2);
distance=sqrt((x1-x2).^2+(y1-y2).^2);
