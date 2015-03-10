tic
clear all
clc
syms m0;
h=2300;
s=1057.83;
v0=57;
ve=2940; %比冲
vve=[ve ve*0.9 ve*1.1]; %ve
vv0=[v0 v0*0.9 v0*1.1]; %v1
hh=[h h*0.9 h*1.1];  %h
m=1.361;
g=1.6;
tmp=[];
for x=0.1:0.01:pi/2
    %分别改变其中的vve，vv0,hh得到不同的数据，用数据做方差分析
    jieguo=solve(hh(3)==2*m*s*vv0(1)/(vve(1)*m0*sin(x))-(cot(x)*s+2*m^2*s^2*g/(vve(1)^2*m0^2*sin(x)*sin(x))));  
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