load kset
for i=1:72
    for j=1:72
        if i>=j
            kset(i,j)=10000;
        end
    end
end
save kset kset