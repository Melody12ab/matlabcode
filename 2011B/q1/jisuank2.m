tic
load zuiduanjuli
% 1-20 line
% 12 14 16 21 22 23 24 28 29 30 38 48 62 colume
%min_dis_matr
% min_dis_matr(1:20,12);
a=[12 14 16 21 22 23 24 28 29 30 38 48 62];
b=1;
%提出前面20行
for i=a
    tmp(:,b)=zuiduanjuli(1:20,i);
    b=b+1;
end

%提出后面72行
c=1;
for i=a
    tmp2(:,c)=zuiduanjuli(21:92,i);
    c=c+1;
end
save tmp tmp tmp2
%size(tmp2)
%tmp为封锁方案矩阵20*13
%tmp2为72*13
% 
% kset=zeros(72);
% %test=zeros(72);
% for i=1:72
%     for j=1:72
%         if i~=j
%             hang1=tmp2(i,:);
%             hang2=tmp2(j,:);
%             tmp1=[tmp;hang1;hang2];
%             %test(i,j)=i*j;
%             kset(i,j)=funck(tmp1);
%         else
%             continue;
%         end
%     end
% end
% load kset
% for i=1:72
%     kset(i,i)=10000;
% end
% zuixiao=min(min(kset));
% find(kset==zuixiao)
toc