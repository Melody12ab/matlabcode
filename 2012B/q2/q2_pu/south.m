clc,clear;
m=1010;n=320;
xi(1:1:m,1:1:n)=0;%初始赋0

nan(1,:)=1;nan(m,:)=1;nan(:,1)=1;nan(:,n)=1;%sibian
for x=85:1:265   %门窗：边界标1，内部标2
    for y=80:1:260
        d=sqrt((x-175)^2+(y-170)^2);
        if abs(d-90)<10^(-1)
            nan(x,y)=1;
        end
        if d<90
            nan(x,y)=2;
        end
    end
end

nan(350:1:710,1:1:250)=1;%两扇门
nan(351:1:709,2:1:249)=2;
nan(780:1:890,90:1:230)=1;
nan(781:1:889,91:1:229)=2;


c5_h=0;
c5_s=0;
c2_h=0;
c2_s=0;

nan2_1=ones(140,101)*2;%先生成C2的矩阵 140 110
nan2_1(1,:)=1;nan2_1(140,:)=1;nan2_1(:,1)=1;nan2_1(:,110)=1;
for x=2:1:870 %1010-140
    for y=2:1:210 %320-110
        if any(any(nan(x:1:x+140,y:1:y+110)))==0
            c5_h=c5_h+1;
            nan(x:1:x+140,y:1:y+110)=nan2_1;
        end
    end
end

nan2=ones(110,140)*2;%先生成C2的矩阵 110 140
nan2(1,:)=1;nan2(110,:)=1;nan2(:,1)=1;nan2(:,140)=1;
for x=2:1:900 %1010-110
    for y=2:1:180 %320-140
        if any(any(nan(x:1:x+109,y:1:y+139)))==0
            c5_s=c5_s+1;
            nan(x:1:x+109,y:1:y+139)=nan2;
        end
    end
end



nan1=ones(132,71)*2;%先生成C2的矩阵 132 71
nan1(1,:)=1;nan1(132,:)=1;nan1(:,1)=1;nan1(:,71)=1;
for x=2:1:878 %1010-132
    for y=2:1:249 %320-71
        if any(any(nan(x:1:x+131,y:1:y+70)))==0
            c2_h=c2_h+1;
            nan(x:1:x+131,y:1:y+70)=nan1;
        end
    end
end

nan1_1=ones(71,132)*2;%先生成C2的矩阵 71 132
nan1_1(1,:)=1;nan1_1(71,:)=1;nan1_1(:,1)=1;nan1_1(:,132)=1;
for x=2:1:939 %1010-71
    for y=2:1:188 %320-132
        if any(any(nan(x:1:x+70,y:1:y+131)))==0
            c2_s=c2_s+1;
            nan(x:1:x+70,y:1:y+131)=nan1_1;
        end
    end
end

c5_h
c5_s
c2_h
c2_s

for i=1:1:m
    for j=1:1:n
        if nan(i,j)==1
            plot(i,j,'g.');hold on;
        end
    end
end