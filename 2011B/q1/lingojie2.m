%load guanxiatest  %min_dis3
%load realfananshuju2  %realfananshuju2
%load zuiduanjuli
%tmp=min_dis3;
tic


%------计算最距离矩阵  92*22
% result=zeros(72);
% for i=1:72
%     for j=1:72
%         if  i>j
%             hang1=zuiduanjuli(:,i);
%             hang2=zuiduanjuli(:,j);
%             tmp1=[tmp';hang1';hang2']';  %最短距离矩阵
%             gongzuoyalijuzhen=tmp1.*realfananshuju2;
%             result(i,j)=o1jisuan(gongzuoyalijuzhen);
%         else
%             continue;
%         end
%     end
% end

% hang1=zuiduanjuli(:,4);
% hang2=zuiduanjuli(:,7);
% tmp1=[tmp';hang1';hang2']';  %最短距离矩阵 92*22
% gongzuoyalijuzhen=tmp1.*realfananshuju2;
%
% o1jisuan(gongzuoyalijuzhen)
load result
% for i=1:72
%     for j=1:72
%         if i<=j
%             result(i,j)=10000;
%         end
%     end
% end
zuixiao=min(min(result));
[x,y]=find(result==zuixiao)
%xlswrite('a.xlsx',zhaodao);
% x =68  zuiduanjuli里面的88列
% y =51  zuiduanjuli里面的71列
toc