xydata=xlsread('we.xlsx');
data1=xydata(:,7); 
sum=0;
for i=9:24:744
    sum=sum+data1(i);
end
mean=sum/31