load demo01
xyzuobiao=xlsread('demo02.xlsx');
xzuo=xyzuobiao(:,1);
yzuo=xyzuobiao(:,2);
for i=1:length(xzuo)
    for j=1:length(yzuo)
        juzhen(xzuo(i),yzuo(j))=distance(xzuo(i),yzuo(j));
    end
end

for i=1:92
    for j=1:92
        if i==j
            juzhen(i,j)=0;
        end
        if i~=j & juzhen(i,j)==0
            juzhen(i,j)=Inf;
        end
    end
end
save D:\matlabcode\2011B\demo02 xyzuobiao xzuo yzuo
save D:\matlabcode\2011B\zhida juzhen
