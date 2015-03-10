load zuiduanjuli   %×î¶Ì¾àÀë¾ØÕó
load demo03
a=demo03';
%size(a)
c=1;
min_dis2=[];
for i=a
    min_dis2(:,c)=zuiduanjuli(:,i);
    c=c+1;
end


% b=[151 153 177 202 203 264 317 325 328 332 362 387 418 483 541 572 578];
% %size(b)
% e=1;
% min_dis=[];
% for i=b
%     min_dis(e,:)=min_dis2(i,:);
%     e=e+1;
% end
% %size(min_dis)
% funck(min_dis)
% 
% 
tmp1=min_dis2;
for i=1:582
    for j=1:80
        if tmp1(i,j)>6 %¹ıÂËzuiduanjuli2
            tmp1(i,j)=0;
        end
    end
end
zhi6=rank(tmp1)

tmp2=min_dis2;
for i=1:582
    for j=1:80
        if tmp2(i,j)>5 %¹ıÂËzuiduanjuli2
            tmp2(i,j)=0;
        end
    end
end
zhi5=rank(tmp2)

tmp3=min_dis2;
for i=1:582
    for j=1:80
        if tmp3(i,j)>4 %¹ıÂËzuiduanjuli2
            tmp3(i,j)=0;
        end
    end
end
zhi4=rank(tmp3)


tmp4=min_dis2;
for i=1:582
    for j=1:80
        if tmp4(i,j)>3 %¹ıÂËzuiduanjuli2
            tmp4(i,j)=0;
        end
    end
end
zhi3=rank(tmp4)
% 
% tmp5=min_dis2;
% for i=1:582
%     for j=1:80
%         if tmp5(i,j)>2.5 %¹ıÂËzuiduanjuli2
%             tmp5(i,j)=0;
%         end
%     end
% end
% zhi25=rank(tmp5)
