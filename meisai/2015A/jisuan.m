ts=0:50;
% x0=[1975/11200000,1-1975/11200000,1.7357e-04];
% x0=[8745/3786764,1-8745/3786764,9.8924e-04];      %L
x0=[10740/5485998,1-10740/5485998,5.9716e-04];    %S
[t,x]=ode45('shuzhi',ts,x0);
figure(1)
plot(t,x(:,1),'r'),grid
xlabel('time unit:week')
ylabel('infective rate')
axis normal
figure(2)
plot(x(:,2),x(:,1)),grid
xlabel('infective rate')
ylabel('susceptible rate')
figure(3)
plot(t,x(:,2),'b'),grid
xlabel('time unit:week')
ylabel('susceptible rate')
axis normal