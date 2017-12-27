function [y,t]=adams3(f,t0,y,h,N)
t=t0+(0:N)*h;

y=runge_kutta_4(f,t0,y,h,2)

for i=3:N
k1=f(y(i),t(i));
k2=f(y(i-1),t(i-1));
k3=f(y(i-2),t(i-2));
y(i+1)=y(i)+h*(23/12*k1-16/12*k2+5/12*k3);
end