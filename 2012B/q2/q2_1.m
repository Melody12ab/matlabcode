xydata=xlsread('q2_xi.xlsx');
a=xydata(:,2);  %a
%size(a)
b=xydata(:,3);  %b
%size(b)
c=xydata(:,1);  %光强
%size(c)
beta=linspace(0,pi/2,5000);  
%size(beta')
sum=0;
k=1;
for i=1:length(beta)
    for j=1:length(a)
        y(j)=(a(j)*cos(beta(i))+b(j)*sin(beta(i)))*c(j);
        if(y(j)>30 || y(j)==30)
            sum=sum+y(j);
        end
    end
     m(k)=sum;
     n(k)=beta(i);
     k=k+1;
     sum=0;
end
%length(m)
%length(n)
zuida=max(m);
suoyin=find(m==zuida);
hudu=n(suoyin);
%角度转弧度为deg2rad
jiao=rad2deg(hudu)   %弧度转角度
cos(hudu)   %计算cos值
