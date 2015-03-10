load gongzuoyali   %cijµ√µΩ  gongzuoyali
a=zeros(92);
for i=1:92
    for j=1:92
        if i==j
            a(i,j)=1;
        end
    end
end
Aeq=[a a a a a a a a a a a a a a a a a a a a];
Beq=linspace(1,1,92)';
%size(Beq)
%size(Aeq)

for i=1:20
    for j=1:92
        b(i,j)=0;
    end
end
c=[b b b b b b b b b b b b b b b b b b b b];
%size(c)  20   1840
for i=1:20
    for m=1+(i-1)*92:92*i
        c(i,m)=1;
    end
end
A=[c;-c];
%size(A)  40  1840
tmp1=linspace(6,6,20)';
tmp2=linspace(-4,-4,20)';
B=[tmp1;tmp2];

%º∆À„f
a=[];
for i=1:20
    a=[gongzuoyalijuzhen(:,i);a];
end
%size(B)
[x,fval]=bintprog(a,A,B,Aeq,Beq);
%xlswrite('b.xlsx',x)