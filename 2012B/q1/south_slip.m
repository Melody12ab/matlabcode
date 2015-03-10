clc,clear;
m=1010;n=651;
nanxie(1:1:m,1:1:n)=0;%初始赋0
nanxie(370:1:730,336:1:475)=1;
nanxie(371:1:729,337:1:474)=2;
nanxie(1,:)=1;nanxie(1010,:)=1;nanxie(:,1)=1;nanxie(:,651)=1;

for i=1:1:m
    for j=1:1:n
        if nanxie(i,j)==1 
            plot(i,j,'b.');hold on;
        end
    end
end

nanxie1=ones(196,99)*2;%先生成B2的矩阵 196 99
nanxie1(1,:)=1;nanxie1(196,:)=1;nanxie1(:,1)=1;nanxie1(:,99)=1;
for x=2:1:814 %1010-196
    for y=2:1:552  %651-99
        if any(any(nanxie(x:1:x+195,y:1:y+98)))==0
            nanxie(x:1:x+195,y:1:y+98)=nanxie1;
        end
    end
end


nanxie1_1=ones(99,196)*2;%先生成B2的矩阵 99 196
nanxie1_1(1,:)=1;nanxie1_1(99,:)=1;nanxie1_1(:,1)=1;nanxie1_1(:,196)=1;
for x=2:1:911 %1010-99
    for y=2:1:455 %651-196
        if any(any(nanxie(x:1:x+98,y:1:y+195)))==0
            nanxie(x:1:x+98,y:1:y+195)=nanxie1_1;
        end
    end
end


for i=1:1:m
    for j=1:1:n
        if nanxie(i,j)==1
            plot(i,j,'b.');hold on;
        end
    end
end