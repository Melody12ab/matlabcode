function zuixiao(a)
%(1)B=sort(A) ��һά���ά���������������,����������������,��AΪ��άʱ,������ÿһ�н�������.
%eg: A=[1,5,3],��sort(A)=[1,3,5]
%A=[1,5,3;2,4,1],��sort(A)=[1,4,1;2,5,3]
%(2)B=sort(A,dim),�����鰴ָ�����������������,
%dim =1,��ʾ��ÿһ�н�������,,dim=2��ʾ��ÿһ�н�������.
%(3)B=sort(A,dim,mode),modeΪָ������ģʽ,modeΪ"ascend"ʱ,������������,Ϊ"descend "ʱ,���н�������.
%(4)[B,I]=sort(A,.....),IΪ���ص������Ԫ����ԭ�����е���λ�û���λ��.
[B,I]=sort(a);
zuixiao=B(2:4,:);
zuisuo=I(2:4,:);
%zui=[zuixiao;zuisuo];

%save D:\matlabcode\2011B\zuiduanfuwu zuixiao zuisuo
%�ڱ���������txt�ļ�ʱ ��save result.txt p -ascii
%dlm('filename',M,'D',R,C)
%������M��R�к�C���÷ָ��Dд�뵽filename��