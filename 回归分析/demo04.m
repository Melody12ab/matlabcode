%ClimateData = xlsread('examp08_01.xls');    % 从Excel文件读取数据
%x = ClimateData(:, 1);    % 提取ClimateData的第1列，即年平均气温数据
%y = ClimateData(:, 5);    % 提取ClimateData的第5列，即全年日照时数数据
x=[2.73 0.2 0.22 0.19 0.18 0.19];
y=[20 8 17 9 15 11];
varname = 'x';    % 变量标签
reglm(y,x,[],varname);    % 调用reglm函数作一元线性回归分析