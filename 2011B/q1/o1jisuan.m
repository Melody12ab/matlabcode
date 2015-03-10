function  value=o1jisuan(gongzuo)
%------为计算准备初始化值
a=zeros(92);
for i=1:92
    for j=1:92
        if i==j
            a(i,j)=1;
        end
    end
end
Aeq=[a a a a a a a a a a a a a a a a a a a a a a];
Beq=linspace(1,1,92)';
%size(Beq)
%size(Aeq)

for i=1:22
    for j=1:92
        b(i,j)=0;
    end
end
c=[b b b b b b b b b b b b b b b b b b b b b b];
%size(c) 
for i=1:22
    for m=1+(i-1)*92:92*i
        c(i,m)=1;
    end
end
A=[c;-c];
%size(A) 
tmp11=linspace(6,6,22)';
tmp22=linspace(-3,-3,22)';
B=[tmp11;tmp22];
%size(B)
%------初始值计算结束

%计算f
a1=[];
for i=1:22
    a1=[gongzuo(:,i);a1];
end
%size(a1)
options=optimset('display','off');
%x0=linspace(0,0,2024)';
[x fval]=bintprog(a1,A,B,Aeq,Beq);
value=min(fval);
