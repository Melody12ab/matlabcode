%curve interpolation
ys=[0 0.9 0.6 1 0 0.1 -0.3 -0.7 -0.9 -0.2]; %已有的样本点ys
xs=0:length(ys)-1;  %已有的样本点xs
x=0:0.1:length(ys)-1;%新的样本点x
y1=interp1(xs,ys,x,'nearest'); %插值产生新的样本点y1
y2=interp1(xs,ys,x,'linear');  %插值产生新的样本点y2
y3=interp1(xs,ys,x,'spline');  %插值产生新的样本点y3
y4=interp1(xs,ys,x,'cubic');   %插值产生新的样本点y4
plot(xs,ys,'+k',x,y1,':r',x,y2,'-m',x,y3,'--c',x,y4,'--b') %分别绘制不同方法产生的曲线
legend('sampled point','nearest','linear','spline','cubic')
