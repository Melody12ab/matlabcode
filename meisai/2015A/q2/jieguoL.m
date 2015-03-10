clear
clc
tic
ts=0:2;
m=0.235660447;          %L
N=3786764;
x0=[8745/N,1-8745/N];   %L
f=inline('[a*x(1)*x(2)-b*x(1);-a*x(1)*x(2)]','t','x','flag','a','b');
% r=1700;   %每一周生产药的数量
result=[];
% a=1;
% for i=1:5
    for r=1800:20:2400
        temp=0;
        n=0.074676766;%*a;
        x0=[8745/N,1-8745/N];
        [t,x]=ode45(f,ts,x0,[],m,n);
        for i=1:50
            temp=temp+1;
            x0=[x(2,1),1-x(2,1)];
    %         a=x(2,1);
            huan=N*x(2,1);
            [t,x]=ode45(f,ts,x0,[],m,n+r*0.9/huan);
            if N*x(2,1) < r
                resulttemp=[i,r];
                result=[result;resulttemp];   %最终结果
                break;
            end
        end
    end
    plot(result(:,2),result(:,1))
    xlabel('speed of manufacturing of the vaccine:week')
    ylabel('need day')
%     title('sensitivity analysis')
%     hold on
%     a=a-0.05;
% end
toc
