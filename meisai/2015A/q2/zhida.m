xydata=xlsread('./data.xlsx','Sheet2');
a1=xydata(:,1);
a1=a1(1:34);
a2=xydata(:,2);
a2=a2(1:34);
b1=xydata(:,3);
b2=xydata(:,4);
result=zeros(36,34);
for i=1:34
    for j=1:36
        result(j,i)=sqrt((a1(i)-b1(j))^2+(a2(i)-b2(j))^2);
    end
end
save result 