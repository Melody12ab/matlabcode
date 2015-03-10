function a=funck(huancun)
for i=1:17
    for j=1:80
        if huancun(i,j)==0
            huancun(i,j)=0.0001;
        end
    end
end
for k=75:-0.01:1
    for i=1:17
        for j=1:80
            if huancun(i,j)>k
                huancun(i,j)=0;
            end
        end
    end
    if rank(huancun)~=17
        a=k+0.1;  %×¢ÊÍ
        break;
    end
end