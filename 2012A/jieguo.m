clc,clear all;
gj=xlsread('data1.xls');
gj=zscore(gj);
r=corrcoef(gj);
[x,y,z]=pcacov(r);
f=repmat(sign(sum(x)),size(x,1),1);
x=x.*f;
num=3;
df=gj*x(:,[1:num]);
tf=df*z(1:num)/100;
[stf,ind]=sort(tf,'descend');
stf=stf'
ind=ind'