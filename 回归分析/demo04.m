%ClimateData = xlsread('examp08_01.xls');    % ��Excel�ļ���ȡ����
%x = ClimateData(:, 1);    % ��ȡClimateData�ĵ�1�У�����ƽ����������
%y = ClimateData(:, 5);    % ��ȡClimateData�ĵ�5�У���ȫ������ʱ������
x=[2.73 0.2 0.22 0.19 0.18 0.19];
y=[20 8 17 9 15 11];
varname = 'x';    % ������ǩ
reglm(y,x,[],varname);    % ����reglm������һԪ���Իع����