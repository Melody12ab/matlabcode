clear all
clc
tic
syms m0;
s=38.32;
result=[];
h=70;
v1=2940; %±È³å
m=1.361-0.017;
g=1.6;
tmp=[];
for x=0.1:0.01:pi/2
    jieguo=solve(2*h*m==4*s*m*cot(x)+16*m^3*s^2*g/(v1^2*m0^2*sin(x)*sin(x)));
    jieguo=abs(jieguo);
    jieguo=vpa(jieguo,7)*1000;
    tmp=[tmp jieguo];
end
a=1:length(tmp);
plot(a,tmp)  %ÃÉÌØ¿¨ÂÞËã·¨Í¼Ïñ
tmp1=sort(tmp(1,:))/1000;
result=tmp1(1)
toc