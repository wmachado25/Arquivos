function [y,t]=euler_vetor(f,t0,y,h,N)
t=t0+(0:N)*h;

for i=1:N
y(:,i+1)=y(:,i)+h*f(y(:,i),t(i));
end

