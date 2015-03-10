clear
clc
tic
ts=0:2;
m=0.089487632*0.9;          
N=11200000;
x0=[1975/N,1-1975/N];  
f=inline('[a*x(1)*x(2)-b*x(1);-a*x(1)*x(2)]','t','x','flag','a','b');
% r=1700;   %每一周生产药的数量
result=[];
for r=60:20:1000
    temp=0;
    n=0.049154387*1.1;
    x0=[1975/N,1-1975/N];
    [t,x]=ode45(f,ts,x0,[],m,n);
    for i=1:50
        temp=temp+1;
        x0=[x(2,1),1-x(2,1)];
%         a=x(2,1);
        huan=N*x(2,1);
        [t,x]=ode45(f,ts,x0,[],m,n+r/huan);
        if N*x(2,1) < r
            resulttemp=[i,r];
            result=[result;resulttemp];   %最终结果
            break;
        end
    end
end
plot(result(:,2),result(:,1))
xlabel('amount of medicine')
ylabel('need day')
toc
