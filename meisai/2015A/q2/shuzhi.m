function y=shuzhi(t,x)
% a=0.089487632;            %G���˵��ܽӴ���
% b=0.049154387;            %���˵���������
% a=0.235660447;            %��������
% b=0.074676766;
% a=1.623311512;            %S
% b=0.052117843;
y=[a*x(1)*x(2)-b*x(1);-a*x(1)*x(2);b*x(1)];

% ts=0:100;
% x0=[1975/11200000,1-1975/11200000,1.7357e-04];
% x0=[8745/3786764,1-8745/3786764,9.8924e-04];      %L
% x0=[10740/5485998,1-10740/5485998,5.9716e-04];    %S
% [t,x]=ode45('shuzhi',ts,x0);
% x(:,1) ��Ⱦ��
% x(:,2) ��������