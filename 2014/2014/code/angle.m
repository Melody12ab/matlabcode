tic
syms  x
m=solve(461253.28*2*12000*2==((-24000/x)*sqrt(1+144000000*4/(x^2))+log(abs(-24000/x+sqrt(1+144000000*4/(x^2)))))*(x^2));
realresult=abs(m)   %水平位移
jiaodu=realresult/1000*1737.013*180/(1740.013*1373*2*pi); %比例夹角
chuxi=19.51;
chubei=44.12;
wei1=chubei-jiaodu   %第一个纬度
wei2=chubei+jiaodu   %第二个纬度
jiaodu1=rad2deg(acos((2*1740.013^2-(realresult/1000*1737.013/1740.013)^2)/(1740.013^2*2))) %余弦定理夹角
wei11=chubei-jiaodu1 
wei22=chubei+jiaodu1
toc