clear all;
syms a b;
c=[a b]';
A=[174 179 183 189 207 234 220.5 256 270 285];
%A=[9205 9513 9171.26 13127 9513 9924 8892.8 10210 9980 9405];
B=cumsum(A);
n=length(A);
for i=1:(n-1)
    C(i)=(B(i)+B(i+1))/2;
end
D=A;D(1)=[];
D=D';
E=[-C;ones(1,n-1)];
c=inv(E*E')*E*D;
c=c';
a=c(1);b=c(2);
F=[];F(1)=A(1);
for i=2:(n+10)
    F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a;
end
G=[];G(1)=A(1);
for i=2:(n+10)
    G(i)=F(i)-F(i-1);
end
t1=1995:2004;
t2=1995:2014;
size(t2);
G
plot(t1,A,'o',t2,G)