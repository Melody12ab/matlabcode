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

% c1_h=0;
% c1_s=0;
% 
% nanxie1=ones(130,110)*2;%先生成C1的矩阵 130 110
% nanxie1(1,:)=1;nanxie1(130,:)=1;nanxie1(:,1)=1;nanxie1(:,110)=1;
% for x=2:1:880 %1010-130
%     for y=2:1:541  %651-110
%         if any(any(nanxie(x:1:x+129,y:1:y+109)))==0
%             c1_h=c1_h+1;
%             nanxie(x:1:x+129,y:1:y+109)=nanxie1;
%         end
%     end
% end
% 
% 
% nanxie1_1=ones(110,130)*2;%先生成C1的矩阵  110 130
% nanxie1_1(1,:)=1;nanxie1_1(109,:)=1;nanxie1_1(:,1)=1;nanxie1_1(:,129)=1;
% for x=2:1:900 %1010-110
%     for y=2:1:521 %651-130
%         if any(any(nanxie(x:1:x+109,y:1:y+129)))==0
%             c1_s=c1_s+1;
%             nanxie(x:1:x+109,y:1:y+129)=nanxie1_1;
%         end
%     end
% end
% 
% c1_h
% c1_s

c5h=0;
c5s=0;

nanxie1_1=ones(140,110)*2;%先生成C5的矩阵  140 110
nanxie1_1(1,:)=1;nanxie1_1(140,:)=1;nanxie1_1(:,1)=1;nanxie1_1(:,110)=1;
for x=2:1:870 %1010-140
    for y=2:1:541 %651-110
        if any(any(nanxie(x:1:x+139,y:1:y+109)))==0
            c5s=c5s+1;
            nanxie(x:1:x+139,y:1:y+109)=nanxie1_1;
        end
    end
end

nanxie1_1=ones(110,140)*2;%先生成C5的矩阵  110 140
nanxie1_1(1,:)=1;nanxie1_1(110,:)=1;nanxie1_1(:,1)=1;nanxie1_1(:,140)=1;
for x=2:1:900 %1010-110
    for y=2:1:511 %651-140
        if any(any(nanxie(x:1:x+109,y:1:y+139)))==0
            c5s=c5s+1;
            nanxie(x:1:x+109,y:1:y+139)=nanxie1_1;
        end
    end
end

c5h
c5s
for i=1:1:m
    for j=1:1:n
        if nanxie(i,j)==1
            plot(i,j,'r.');hold on;
        end
    end
end