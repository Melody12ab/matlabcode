load demo02
juzhen=zeros(92);
j=1;
for i=1:140
    juzhen(xzuo(i),yzuo(j))=distance(xzuo(i),yzuo(j));
    j=j+1;
end
%size(sparse(juzhen))
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
%save D:\matlabcode\2011B\zhida juzhen
zuiduanjuli=floydsuanfa(juzhen)/10;
%save D:\matlabcode\2011B\zuiduanjuli zuiduanjuli

