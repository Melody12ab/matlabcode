clear all
clc
tic
syms m0;
h=2300;
s=1057.83;
v0=57;
v1=2940; %比冲
m=1.361;
g=1.6;
tmp=[];
for x=0.1:0.01:pi/2
    jieguo=solve(h==2*m*s*v0/(v1*m0*sin(x))-(cot(x)*s+2*m^2*s^2*g/(v1^2*m0^2*sin(x)*sin(x))));
    jieguo=abs(jieguo);
    jieguo=vpa(jieguo,7)*1000;
    tmp=[tmp jieguo];
end
a=1:length(tmp);
plot(a,tmp)  %蒙特卡罗算法图像
tmp1=sort(tmp(1,:))/1000;
result=tmp1(1)
%计算结果:result=0.01782281265512231094305661827093
toc