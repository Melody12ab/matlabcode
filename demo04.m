clc,clear all
c=[3,-1,-1];
a=[1,-2,1;4,-1,-2];b=[11,-3];
aeq=[-2,0,1];beq=1;
lb=zeros(3,1);
[x,val]=linprog(-c,a,b,aeq,beq,lb)