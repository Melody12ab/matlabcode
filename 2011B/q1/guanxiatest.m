load zuiduanjuli   %×î¶Ì¾àÀë¾ØÕó
for i=1:20
    min_dis2(:,i)=zuiduanjuli(:,i);
end
min_dis2=min_dis2/10;
for i=1:92
    for j=1:20
        if min_dis2(i,j)>3 %¹ıÂËzuiduanjuli2
            min_dis2(i,j)=10000
        end
    end
end
min_dis3=min_dis2;
%save D:\matlabcode\2011B\guanxiatest min_dis3

        



