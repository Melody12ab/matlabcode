function zuixiao(a)
%(1)B=sort(A) 对一维或二维数组进行升序排序,并返回排序后的数组,当A为二维时,对数组每一列进行排序.
%eg: A=[1,5,3],则sort(A)=[1,3,5]
%A=[1,5,3;2,4,1],则sort(A)=[1,4,1;2,5,3]
%(2)B=sort(A,dim),对数组按指定方向进行升序排序,
%dim =1,表示对每一列进行排序,,dim=2表示对每一行进行排序.
%(3)B=sort(A,dim,mode),mode为指定排序模式,mode为"ascend"时,进行升序排序,为"descend "时,进行降序排序.
%(4)[B,I]=sort(A,.....),I为返回的排序后元素在原数组中的行位置或列位置.
[B,I]=sort(a);
zuixiao=B(2:4,:)
zuisuo=I(2:4,:)
zui=[zuixiao;zuisuo]
