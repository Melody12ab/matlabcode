function [d,path]=floyddemo(a,sp,ep)
% floyd   - 最短路问题 
% 
% Syntax: [d,path]=floyd(a,sp,ep) 
% 
% Inputs: 
%    a    - 距离矩阵是指i到j之间的距离，可以是有向的 
%    sp   - 起点的标号 
%    ep   - 终点的标号 
% 
% Outputs: 
%    d    - 最短路的距离 
%    path - 最短路的路径 
% 
% Example: 
%     a =[
%         0   50 Inf 40 25 10 ;
%         50 0   15 20 Inf 25 ;
%         Inf 15 0   10 20 Inf ;
%         40 20 10 0 10 25 ;
%         25 Inf 20 10 0   55 ;
%         10 25 Inf 25 55 0 ];
%      [d,path]=floyd(a,2,5)
% 
% 
% 
n=size(a,1);
D=a;
path=zeros(n,n);
for i=1:n
   for j=1:n
       if D(i,j)~=inf
           path(i,j)=j; %j是i的后续点
       end
   end
end

for k=1:n
   for i=1:n
      for j=1:n
         if D(i,j)>D(i,k)+D(k,j)
             D(i,j)=D(i,k)+D(k,j);
             path(i,j)=path(i,k);
         end
      end
   end
end

p=[sp];
mp=sp;
for k=1:n
    if mp~=ep
        d=path(mp,ep);
        p=[p,d];
        mp=d;
    end
end
d=D(sp,ep)
path=p

