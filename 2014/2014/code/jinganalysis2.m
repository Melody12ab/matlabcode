clear all
clc
tic
syms m0;
s=38.32;
h=70;
ve=2940;
ve=[ve ve*0.9 ve*1.1];
hh=[h h*0.9 h*1.1];
m=1.361-0.017;
g=1.6;
tmp=[];
for x=0.1:0.01:pi/2
    jieguo=solve(2*hh(1)*m==4*s*m*cot(x)+16*m^3*s^2*g/(ve(3)^2*m0^2*sin(x)*sin(x)));
    jieguo=abs(jieguo);
    jieguo=vpa(jieguo,7)*1000;
    tmp=[tmp jieguo(1)];
end
k=1;
result=[];
for i=1:length(tmp)
    result(k)=tmp(i);
    k=k+1;
end
result=result';
toc