tic
a0=imread('./����1/000.bmp');
a1=imread('./����1/001.bmp');
a2=imread('./����1/002.bmp');
a3=imread('./����1/003.bmp');
a4=imread('./����1/004.bmp');
a5=imread('./����1/005.bmp');
a6=imread('./����1/006.bmp');
a7=imread('./����1/007.bmp');
a8=imread('./����1/008.bmp');
a9=imread('./����1/009.bmp');
a10=imread('./����1/010.bmp');
a11=imread('./����1/011.bmp');
a12=imread('./����1/012.bmp');
a13=imread('./����1/013.bmp');
a14=imread('./����1/014.bmp');
a15=imread('./����1/015.bmp');
a16=imread('./����1/016.bmp');
a17=imread('./����1/017.bmp');
a18=imread('./����1/018.bmp');
a=[a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18];
b={a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18};
%size(a)
for i=1:1980
    for j=1:1368
        if a(i,j)>0 & a(i,j)<=127
            a(i,j)=0;
        end
        if a(i,j)>=128 & a(i,j)<255
            a(i,j)=255;
        end
    end
end

%ȷ���߽�ͼ���
for left=0:18
    m=1+left*72;
    if sum(a(:,m))==1980*255
        left;%��߽�
        break
    end
end
for right=0:18
    n=72*(right+1);
    if sum(a(:,n))==1980*255
        right;
        break %�ұ߽�
    end
end

%�����Ŷ�Ӧ����  ����ʼ��
ling=zeros(19);result=ling(1,:);result(1)=left;result(19)=right;

chu=a(:,72*(left+1));
tmm=[];
for x=1:17
    jihe=[];
    for i=0:18
        m=1+i*72;
        jihe=[sum(chu==a(:,m));jihe];
    end
    for i=0:18
        m=1+i*72;
        if sum(chu==a(:,m))==max(jihe)
            result(x+1)=i;
        end
    end
    suo=72*(result(x+1)+1);
    chu=a(:,suo);
end
%result [8 14 12 15 3 10 2 16 1 4 5 9 13 18 11 7 17 0 6]
jieguo=[];
for i=result
    i=i+1;
    jieguo=[jieguo b{i}];
end
imtool(jieguo)
toc
