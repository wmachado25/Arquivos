function [y,t]=adams4(f,t0,y,h,N)
t=t0+(0:N)*h;

y=runge_kutta_4(f,t0,y,h,3)

for i=4:N
k1=f(y(i),t(i));
k2=f(y(i-1),t(i-1));
k3=f(y(i-2),t(i-2));
k3=f(y(i-3),t(i-3));
y(i+1)=y(i)+h*(55/24*k1-59/24*k2+37/24*k3-9/24*k4);
end