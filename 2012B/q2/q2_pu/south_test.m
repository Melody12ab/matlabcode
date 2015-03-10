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


c1_h=0;
c1_s=0;
c5_h=0;
c5_s=0;



nan1_1=ones(110,130)*2;%先生成C1的矩阵 110 130
nan1_1(1,:)=1;nan1_1(110,:)=1;nan1_1(:,1)=1;nan1_1(:,130)=1;
for x=2:1:900 %1010-110
    for y=2:1:190 %320-130
        if any(any(nan(x:1:x+109,y:1:y+129)))==0
            c1_s=c1_s+1;
            nan(x:1:x+109,y:1:y+129)=nan1_1;
        end
    end
end


nan1=ones(130,110)*2;%先生成C1的矩阵 130 110
nan1(1,:)=1;nan1(130,:)=1;nan1(:,1)=1;nan1(:,110)=1;
for x=2:1:880 %1010-130
    for y=2:1:210 %320-110
        if any(any(nan(x:1:x+129,y:1:y+109)))==0
            c1_s=c1_s+1;
            nan(x:1:x+129,y:1:y+109)=nan1_1;
        end
    end
end



nan2_1=ones(140,110)*2;%先生成C5的矩阵 140 110
nan2_1(1,:)=1;nan2_1(140,:)=1;nan2_1(:,1)=1;nan2_1(:,110)=1;
for x=2:1:870 %1010-140
    for y=2:1:210 %320-110
        if any(any(nan(x:1:x+139,y:1:y+109)))==0
            c5_h=c5_h+1;
            nan(x:1:x+139,y:1:y+109)=nan2_1;
        end
    end
end

nan2=ones(110,140)*2;%先生成C5的矩阵 110 140
nan2(1,:)=1;nan2(110,:)=1;nan2(:,1)=1;nan2(:,140)=1;
for x=2:1:900 %1010-110
    for y=2:1:180 %320-140
        if any(any(nan(x:1:x+109,y:1:y+139)))==0
            c5_s=c5_s+1;
            nan(x:1:x+109,y:1:y+139)=nan2;
        end
    end
end

c1_h
c1_s
c5_h
c5_s


for i=1:1:m
    for j=1:1:n
        if nan(i,j)==1
            plot(i,j,'g.');hold on;
        end
    end
end