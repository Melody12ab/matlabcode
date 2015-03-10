m=710;n=440;
dong(1:1:m,1:1:n)=0;%初始赋0
for i=1:1:640
    dong(i,floor(321+i*12/64):1:440)=2;
end
for i=1:1:640
    dong(i,floor(320+(710-i)*12/7):1:440)=2;
end
for i=1:1:710
    if i<640
        j=floor(321+i*12/64);
    else
        j=floor(320+(710-i)*12/7);
    end
    dong(i,j)=1;
end
dong(340:1:450,1:1:250)=1;%men标记
dong(1,1:1:320)=1;dong(710,1:1:320)=1;dong(1:1:710,1)=1;%sanbian


dong1=ones(141,111)*2;%先生成C3的矩阵 141 111
dong1(1,:)=1;dong1(141,:)=1;dong1(:,1)=1;dong1(:,111)=1;
for x=2:1:569 %710-141
    for y=2:1:329 %440-111
        if any(any(dong(x:1:x+140,y:1:y+110)))==0
            dong(x:1:x+140,y:1:y+110)=dong1;
        end
    end
end


dong2=ones(165,71)*2;%先生成C11的矩阵  165 71
dong2(1,:)=1;dong2(165,:)=1;dong2(:,1)=1;dong2(:,71)=1;
for x=2:1:545 %710-165
    for y=2:1:369 %440-71
        if any(any(dong(x:1:x+164,y:1:y+70)))==0
            dong(x:1:x+164,y:1:y+70)=dong2;
        end
    end
end


for i=1:1:m
    for j=1:1:n
        if dong(i,j)==1
            plot(i,j,'r.');hold on;
        end
    end
end