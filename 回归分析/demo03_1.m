%-------------------------------
%建立头围关于年龄的回归方程
%以下为画出数据散点图
%-------------------------------
HeadData = xlsread('examp08_02.xls');    %从Excel文件读取数据
x = HeadData(:, 4);    % 提取HeadData矩阵的第4列数据，即年龄数据
y = HeadData(:, 9);    % 提取HeadData矩阵的第9列数据，即头围数据
plot(x, y, 'k.')    % 绘制x和y的散点图
xlabel('年龄(x)')    % 为X轴加标签
ylabel('头围(y)')    % 为Y轴加标签