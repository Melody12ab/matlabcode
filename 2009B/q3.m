tic
xytmp=xlsread('demo.xlsx','²ÎÊý');
a=xytmp(:,2);
b=xytmp(:,3);
x=zeros(102,1);
c=[2 2 2 20 4 4 6 7 9 10 19 4 8 2 3];
%sum(c)
%size(a)
%size(b)
for i=1:102
    x(i)=5000;
end
tmpB=[];
for t=12:26
    for i=1:102
        if b(i)>=t
            x(i)=x(i)-10000;
        end
        if a(i)==1
            x(i)=x(i)+5000;
        end
        x(i)=x(i)-100*b(i);
        if mod(t,7)==2
            switch a(i)
                case 2
                    x(i)=x(i)+30;
                case 3
                    x(i)=x(i)+40;
                case 4
                    x(i)=x(i)+20;
                case 5
                    x(i)=x(i)+10;
            end
        else if mod(t,7)==4
                switch a(i)
                    case 2
                        x(i)=x(i)+40;
                    case 3
                        x(i)=x(i)+10;
                    case 4
                        x(i)=x(i)+30;
                    case 5
                        x(i)=x(i)+10;
                end
            else
                switch a(i)
                    case 2
                        x(i)=x(i)+10;
                    case 3
                        x(i)=x(i)+20;
                    case 4
                        x(i)=x(i)+40;
                    case 5
                        x(i)=x(i)+30;
                end
            end
        end
    end
    [A,B]=hanshu(c(t-11),x);
    tmpB=[tmpB B'];
    B'
    for m=tmpB
        x(m)=-1000000;
    end
    for i=1:102
        if x(i)~=-1000000;
            x(i)=5000;
        end
    end
end
toc