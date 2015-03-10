load zuiduanjuli
% 1-20 line
% 12 14 16 21 22 23 24 28 29 30 38 48 62 colume
%min_dis_matr
% min_dis_matr(1:20,12);
a=[12 14 16 21 22 23 24 28 29 30 38 48 62];
b=1;
for i=a
    tmp(:,b)=zuiduanjuli(1:20,i);
    b=b+1;
end
%tmp为封锁方案矩阵20*13
save D:\matlabcode\2011B\fengsuofangan tmp
%把所有的inf换成一个很大的数 把 0 换成 一个很小的数
for i=1:20
    for j=1:13
        if tmp(i,j)==inf
            tmp(i,j)=10000;
        end
        if tmp(i,j)==0
            tmp(i,j)=0.0001;
        end
    end
end
