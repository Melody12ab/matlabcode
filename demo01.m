p = 100;
xs = 1:1:10;
ys = 0*xs;
for k = 1:length(xs)
    x = xs(k);
    y = fsolve(@(y)p-x^2-y^2,zeros(1,length(x)));
    ys(k) = y;
end
A = [xs; ys];