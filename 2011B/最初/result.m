load juzhen
min_distance=floyd01(juzhen);
for i=1:20
    min_dis2(:,i)=min_distance(:,i);
end
min_dis2=min_dis2/10;
save D:\matlabcode\2011B\min_dis_matr2 min_dis2
for i=1:92
    for j=1:20
        if min_dis2(i,j)>3 || min_dis2(i,j)==inf
            min_dis2(i,j)=0;
        end
    end
end
save D:\matlabcode\2011B\min_limit min_dis2

        



