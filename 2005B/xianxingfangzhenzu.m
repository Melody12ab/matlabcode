a=zeros(7);
for i=1:7
    for j=1:7
        if i==j
           a(i,j) =0.8;
        end
        if i-j==1
            a(i,j)=0.8^2*0.5;
        end
        if i-j==2
            a(i,j)=0.8^3*0.5^2;
        end
        if i-j==3
            a(i,j)=0.8^4*0.5^3;
        end
        if i-j==4
            a(i,j)=0.8^5*0.5^4;
        end
        if i-j==5
            a(i,j)=0.8^6*0.5^5;
        end
        if i-j==6
            a(i,j)=0.8^7*0.5^6;
        end
    end
end
xishu=a;