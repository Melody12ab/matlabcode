tic
clc;
clear;

A=[1 3 3 6 7
   1/3 1 1 2 3
   1/3 1 1 2 2
   1/6 1/2 1/2 1 1
   1/7 1/3 1/2 1 1];
                                   %���ضԱȾ���A��ֻ��Ҫ�ı����A
[m,n]=size(A);                     %��ȡָ�����
RI=[0 0 0.58 0.90 1.12 1.24 1.32 1.41 1.45 1.49 1.51];
R=rank(A);                         %���жϾ������
[V,D]=eig(A);                      %���жϾ��������ֵ������������V����ֵ��D����������
tz=max(D);
B=max(tz);                         %�������ֵ
% disp('��������ֵΪ:');disp(B);
[row, col]=find(D==B);             %�������ֵ����λ��
C=V(:,col);                        %��Ӧ��������
CI=(B-n)/(n-1);                    %����һ���Լ���ָ��CI
CR=CI/RI(1,n);   
if CR<0.10
    disp('CI=');disp(CI);
    disp('CR=');disp(CR);
    disp('�ԱȾ���Aͨ��һ���Լ��飬������Ȩ������QΪ��');
    Q=zeros(n,1);
    for i=1:n
        Q(i,1)=C(i,1)/sum(C(:,1)); %����������׼��
    end
    Q                              %���Ȩ������
else
    disp('�ԱȾ���Aδͨ��һ���Լ��飬��ԶԱȾ���A���¹���');
end
toc