clc, clear, a=zeros(9);
a(1,2)=6; a(1,3)=4; a(1,4)=5;
a(2,3)=3; a(2,5)=9; a(2,6)=9;
a(3,4)=4; a(3,5)=6; a(3,6)=7; a(3,7)=3;
a(4,7)=5; a(4,9)=2;
a(5,8)=12;
a(6,5)=8; a(6,8)=10;
a(7,6)=4; a(7,8)=15; 
a(9,3)=2;
b=sparse(a);
[x,y,z]=graphmaxflow(b,1,8)
