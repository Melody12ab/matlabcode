clear all;clc;
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

a3_h=0;
a3_s=0;

dong1=ones(158,81)*2;%先生成C3的矩阵 158 81
dong1(1,:)=1;dong1(158,:)=1;dong1(:,1)=1;dong1(:,81)=1;
for x=2:1:552 %710-158
    for y=2:1:359 %440-81
        if any(any(dong(x:1:x+157,y:1:y+80)))==0
            a3_h=a3_h+1;
            dong(x:1:x+157,y:1:y+80)=dong1;
        end
    end
end

dong1_1=ones(81,158)*2;%先生成C3的矩阵 81 158
dong1_1(1,:)=1;dong1_1(81,:)=1;dong1_1(:,1)=1;dong1_1(:,158)=1;
for x=2:1:629 %710-81
    for y=2:1:282 %440-158
        if any(any(dong(x:1:x+80,y:1:y+157)))==0
            a3_s=a3_s+1;
            dong(x:1:x+80,y:1:y+157)=dong1_1;
        end
    end
end

a3_h
a3_s

for i=1:1:m
    for j=1:1:n
        if dong(i,j)==1
            plot(i,j,'r.');hold on;
        end
    end
end