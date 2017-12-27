function [y,t]=adams2(f,t0,y,h,N)
t=t0+(0:N)*h;

y=runge_kutta_4(f,t0,y,h,1)

for i=2:N
k1=f(y(i),t(i));
k2=f(y(i-1),t(i-1));
y(i+1)=y(i)+h*(3/2*k1-1/2*k2);
end