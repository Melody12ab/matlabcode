xydata=xlsread('demo02.xlsx');
xydata=xydata';
%size(xydata)
a1=[];
a2=[];
a3=[];
a4=[];
a5=[];
a6=[];
a7=[];
a8=[];
a9=[];
a10=[];
a11=[];
a12=[];
a13=[];
a14=[];
a15=[];
a16=[];
a17=[];
a18=[];
a19=[];
a20=[];
a21=[];
a22=[];
for i=1:28
    for j=1:7
        if i==j
          a1=[a1;xydata(i,j)];
        end
        if i-j==1
          a2=[a2;xydata(i,j)];
        end
        if i-j==2
          a3=[a3;xydata(i,j)];
        end
        if i-j==3
          a4=[a4;xydata(i,j)];
        end
        if i-j==4
          a5=[a5;xydata(i,j)];
        end
        if i-j==5
          a6=[a6;xydata(i,j)];
        end
        if i-j==6
          a7=[a7;xydata(i,j)];
        end
        if i-j==7
          a8=[a8;xydata(i,j)];
        end
         if i-j==8
          a9=[a9;xydata(i,j)];
         end
         if i-j==9
          a10=[a10;xydata(i,j)];
         end
         if i-j==10
          a11=[a11;xydata(i,j)];
         end
         if i-j==11
          a12=[a12;xydata(i,j)];
         end
         if i-j==12
          a13=[a13;xydata(i,j)];
         end
         if i-j==13
          a14=[a14;xydata(i,j)];
         end
         if i-j==14
          a15=[a15;xydata(i,j)];
         end
         if i-j==15
          a16=[a16;xydata(i,j)];
         end
         if i-j==16
          a17=[a17;xydata(i,j)];
         end
         if i-j==17
          a18=[a18;xydata(i,j)];
         end
         if i-j==18
          a19=[a19;xydata(i,j)];
         end
         if i-j==19
          a20=[a20;xydata(i,j)];
         end
         if i-j==20
          a21=[a21;xydata(i,j)];
         end
         if i-j==21
          a22=[a22;xydata(i,j)];
         end
    end
end
nh3=[a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22];