syms x
y=sin(x);
dy=diff(y);
dy_zero=solve(dy),dy_zero_num=double(dy_zero)
