function money=calc_money(num_L,distance)
load SSdata_CountMoney;
if price_mat(num_L,2)==0   %单一票制
    money=1;
else
    money=jifei(distance);   %分段计费
end