function [D,R]=floyd(A)
%��floyd�㷨ʵ������������֮������·�̡������и�Ȩ
%����DΪ��ͨͼ��Ȩ����
D=A;n=length(D);
for i=1:n
    for j=1:n  
        R(i,j)=i;%��·����ֵ
    end
end
for k=1:n 
    for i=1:n
        for j=1:n 
            if D(i,k)+D(k,j)<D(i,j)
                D(i,j)=D(i,k)+D(k,j);%���� D(i,j)��˵��ͨ��k��·�̸���
                R(i,j)=R(k,j);%����R(i,j)����Ҫͨ��k
            end
        end
    end
    hl=0;
    for i=1:n
        if D(i,i)<0
           hl=1;
           break;%�����ڲ��forѭ��
        end
    end
    if(hl==1)
        fprintf('�и���·')
        break;%���������ѭ��
    end
end
