%==============================================================
% ����: ��վ��S��·��L���󣬱�ʾͨ��S��������·
% ����: 8/9/2011
%==============================================================
clear,clc
fid=fopen('Bus.txt','r');%������
if fid>0 disp('�����ļ��򿪳ɹ���')
else disp('��ʧ��'),return
end

SLmat1=zeros(3957,520,2);
temp=[];
while ~feof(fid)
%for m=1:2
    temp=fgetl(fid);
    if temp(1)=='L'
        temp_L=str2num(temp(2:4));%��ǰL��ֵ
    end
    fgetl(fid);temp=fgetl(fid);
    %������
    if temp(1)=='��'
        n=find(temp=='S');
        for i=1:length(n)
           n_S=str2num(temp(n(i)+1:n(i)+4));
           SLmat1(n_S,temp_L,1)=i;
        end  
    elseif temp(1)=='S'||temp(1)=='��'     %���ͻ��ߵ�һƱ��
        n=find(temp=='S');
        for i=1:length(n)
           n_S=str2num(temp(n(i)+1:n(i)+4));
           SLmat1(n_S,temp_L,1)=i;           
        end   
        for i=length(n):-1:1
            n_S=str2num(temp(n(i)+1:n(i)+4));
            SLmat1(n_S,temp_L,2)=length(n)-i+1;    %���εĴ洢�ڵڶ�������
        end
    end   
    %������
    temp=fgetl(fid);
    if ~isempty(temp)&&temp(1)=='��'
        n=find(temp=='S');
        for i=1:length(n)
           n_S=str2num(temp(n(i)+1:n(i)+4));
           SLmat1(n_S,temp_L,2)=i;
        end        
    end
end

fclose(fid);
s=sparse(SLmat1)%��������վ�� ����������·��  ��ȡ���������ݱ�ʾ����·����һ��վ
%-------------��SL����д���ı��ļ�-------------
%save D:\matlabcode\2007B\q1\SLdata
disp('վ��S�����·�����Ѿ�����ΪD:\matlabcode\2007B\q1\SLdata')