clear all
clc
tic
syms m0;
s=38.32;
result=[];
h=70;
ve=2940;
ve=[ve ve*0.9 ve*1.1];
hh=[h h*0.9 h*1.1];
m=1.361-0.017;
g=1.6;
tmp=[];
mm=0.1:0.01:pi/2;
flag=0;
for j=hh   %分别改变
    flag=flag+1;
    for x=0.1:0.01:pi/2
        jieguo=solve(2*h*m==4*s*m*cot(x)+16*m^3*s^2*g/(j^2*m0^2*sin(x)*sin(x)));
        jieguo=abs(jieguo);
        jieguo=vpa(jieguo,7)*1000;
        tmp=[tmp jieguo];
    end
    if flag==1
        plot(mm,tmp,'r')
    elseif flag==2
        hold on
        plot(mm,tmp,'black')
    else flag==3
        hold on
        plot(mm,tmp,'b')
    end
    tmp=[];
end
toc