clc,clear all,format rat
xydata=xlsread('markefu.xlsx');
lie1=xydata(:,17)';
for i=1:6
    for j=1:6
        f(i,j)=length(findstr([i,j],lie1)); 
    end
end
ni=sum(f,2);                    
phat=f./repmat(ni,1,size(f,2));
phat(find(isnan(phat)))=0;
a=phat;
format
%juzhen=[0 0 1 0 0 0];
juzhen=[0 1 0 0 0 0];
b=[];
for i=1:92
    b=[b;juzhen*a^i];
end
mean(b)