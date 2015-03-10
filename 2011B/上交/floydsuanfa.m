function [D,R]=floyd(A)
%用floyd算法实现求任意两点之间的最短路程。可以有负权
%参数D为连通图的权矩阵
D=A;n=length(D);
for i=1:n
    for j=1:n  
        R(i,j)=i;%赋路径初值
    end
end
for k=1:n 
    for i=1:n
        for j=1:n 
            if D(i,k)+D(k,j)<D(i,j)
                D(i,j)=D(i,k)+D(k,j);%更新 D(i,j)，说明通过k的路程更短
                R(i,j)=R(k,j);%更新R(i,j)，需要通过k
            end
        end
    end
    hl=0;
    for i=1:n
        if D(i,i)<0
           hl=1;
           break;%跳出内层的for循环
        end
    end
    if(hl==1)
        fprintf('有负回路')
        break;%跳出最外层循环
    end
end
