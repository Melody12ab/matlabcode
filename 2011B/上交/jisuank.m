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
%tmpΪ������������20*13
%save D:\matlabcode\2011B\fengsuofangan tmp
%�����е�inf����һ���ܴ���� �� 0 ���� һ����С����
for i=1:20
    for j=1:13
        if tmp(i,j)==0
            tmp(i,j)=0.0001;
        end
    end
end
%����Kֵ
tmp1=tmp;
a=0;
for k=30:-0.001:1
    for i=1:20
        for j=1:13
            if tmp1(i,j)>k
                tmp1(i,j)=0;
            end
        end
    end
    if rank(tmp1)~=13
        a=k+0.001;  %ע��
        break;
    end
end
%���ŷ�������
 for i=1:20
        for j=1:13
            if tmp(i,j)>a  
                tmp(i,j)=0;
            end
        end
 end
 zuiyou=tmp;
 %rank(zuiyou)
 %save D:\matlabcode\2011B\zuiyoufangan zuiyou
 sparse(zuiyou)
