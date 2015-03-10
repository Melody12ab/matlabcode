tic
xytmp=xlsread('demo.xlsx','²ÎÊý2');
b=xytmp(:,1);
x=zeros(length(b),1);
c=[0 0 1 3 1 0 1 2 0 0 0 0 0 0];
%size(a)
%size(b)
for i=1:length(x)
    x(i)=5000;
end
tmpB=[];
for t=12:25
    for i=1:length(x)
        if b(i)>=t
            x(i)=x(i)-10000;
        end
        x(i)=x(i)-100*b(i);
    end
    [A,B]=hanshu(c(t-11),x);
    tmpB=[tmpB B'];
    B'
    for m=tmpB
        x(m)=-1000000;
    end
    for i=1:length(b)
        if x(i)~=-1000000;
            x(i)=5000;
        end
    end
end
toc