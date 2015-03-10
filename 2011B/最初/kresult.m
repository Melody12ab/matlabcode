load min_dis_matr
% 1-20 line
% 12 14 16 21 22 23 24 28 29 30 38 48 62 colume
%min_dis_matr
% min_dis_matr(1:20,12);
a=[12 14 16 21 22 23 24 28 29 30 38 48 62];
b=1;
for i=a
    tmp(:,b)=min_dis_matr(1:20,i);
    b=b+1;
end
tmp=tmp/10;
%save D:\matlabcode\2011B\fensuofangan tmp
%把所有的inf换成一个很大的数 把 0 换成 一个很小的数
for i=1:20
    for j=1:13
        if tmp(i,j)==inf
            tmp(i,j)
        end
        if tmp(i,j)==0
            tmp(i,j);
        end
    end
end
