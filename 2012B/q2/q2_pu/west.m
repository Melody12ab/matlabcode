clc,clear;
m=710;n=440;
xi(1:1:m,1:1:n)=0;%初始赋0
for i=1:1:70
    xi(i,floor(320+i*12/7):1:440)=2;
end
for i=70:1:710
    xi(i,floor(320+(710-i)*12/64):1:440)=2;
end
for i=1:1:710
    if i<70
        j=floor(320+i*12/7);
    else
        j=floor(320+(710-i)*12/64);
    end
    xi(i,j)=1;
end
xi(1,1:1:320)=1;xi(710,1:1:320)=1;xi(1:1:710,1)=1;%sanbian

xi2=ones(196,99)*2;%先生成B5的矩阵  196 99
xi2(1,:)=1;xi2(196,:)=1;xi2(:,1)=1;xi2(:,99)=1;
for x=2:1:514 %710-196
    for y=2:1:341 %440-99
        if any(any(xi(x:1:x+195,y:1:y+98)))==0
            xi(x:1:x+195,y:1:y+98)=xi2;
        end
    end
end

xi1=ones(99,196)*2;%先生成B5的矩阵  99 196
xi1(1,:)=1;xi1(99,:)=1;xi1(:,1)=1;xi1(:,196)=1;
for x=2:1:611 %710-99
    for y=2:1:244 %440-196
        if any(any(xi(x:1:x+98,y:1:y+195)))==0
            xi(x:1:x+98,y:1:y+195)=xi1;
        end
    end
end



for i=1:1:m
    for j=1:1:n
        if xi(i,j)==1
            plot(i,j,'b.');hold on;
        end
    end
end