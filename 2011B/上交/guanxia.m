load zuiduanjuli   %��̾������
for i=1:20
    min_dis2(:,i)=zuiduanjuli(:,i);
end
min_dis2=min_dis2/10;
%zuiduanjuli2  92��20��
save D:\matlabcode\2011B\zuiduanjuli2 min_dis2
for i=1:92
    for j=1:20
        if min_dis2(i,j)>3  %����zuiduanjuli2
            min_dis2(i,j)=0;
        end
    end
end
min_dis3=min_dis2;
save D:\matlabcode\2011B\xianzhijuzhen min_dis3

        



