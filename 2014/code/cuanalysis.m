clear all
clc
tic
syms m0;
h=2300;
s=1057.83;
v0=57;
v1=2940; %±È³å
v=[v1 v1*0.9 v1*1.1]; %v1
vv0=[v0 v0*0.9 v0*1.1]; %v0
hh=[h h*0.9 h*1.1];  %h
m=1.361;
g=1.6;
tmp=[];
tmp1=[];
mm=0.1:0.01:pi/2;
flag=0;
for j=hh
    flag=flag+1;
    for x=0.1:0.01:pi/2
        jieguo=solve(h==2*m*s*v0/(j*m0*sin(x))-(cot(x)*s+2*m^2*s^2*g/(j^2*m0^2*sin(x)*sin(x))));
        jieguo=abs(jieguo);
        jieguo=vpa(jieguo,7)*1000;
        tmp=[tmp jieguo(1)];
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