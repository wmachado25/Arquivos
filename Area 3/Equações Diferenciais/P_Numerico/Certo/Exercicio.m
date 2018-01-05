v = 275873;
f = @(x,t) [-(2/v)*x(1)-(2/(v^2))*x(2);  x(1)]
t0=0;
y0 = [4;5]
h = 1800;   %diminuir
N = 1200;   %aumentar

%para melhorar a precisao

[y,t] = EulerImp(f,h,N,y0)

plot(y(1,:))
plot(y(2,:))