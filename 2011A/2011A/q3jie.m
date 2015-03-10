load chu  %319*319
xydata=xlsread('demo01.xlsx');
B=xydata(:,6:13);
for i=1:319
    tmp=sum(chu(i,:));
    for j=1:319
        chu(i,j)=chu(i,j)/tmp*0.1;
    end
end
for i=1:319
    for j=1:319
        if i==j
            chu(i,j)=0.9;
        end
    end
end
xichujuzhen=chu;
A=chu;
X=A\B;
size(X)
