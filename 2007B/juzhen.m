function result=juzhen(A,B)
tic
C=zeros(1500);
for k=1:1500
    for i=1:1500
        a=A(k,:);b=B(:,i);
        for j=1:1500
            sum(j)=a(j)+b(j);
        end
        c(i)=min(sum);
    end
    C(k,:)=c;
end
result=C;
toc