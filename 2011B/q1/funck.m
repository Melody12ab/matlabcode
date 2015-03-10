function a=funck(huancun)
for i=1:20
    for j=1:13
        if huancun(i,j)==0
            huancun(i,j)=0.0001;
        end
    end
end
for k=30:-0.1:1
    for i=1:22
        for j=1:13
            if huancun(i,j)>k
                huancun(i,j)=0;
            end
        end
    end
    if rank(huancun)~=13
        a=k+0.1;  %×¢ÊÍ
        break;
    end
end
