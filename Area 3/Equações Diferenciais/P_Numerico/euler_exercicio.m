f=@(y,t) -2*y
t0=0
y0=1
h=0.0000001 %diminuir
N=100000000 %aumentar

%para melhorar a precisao

[y,t]=euler_implicito(f,t0,y0,h,N)

plot (t,y)
hold on
y_ana=@(t) exp(-2*t)
fplot (y_ana, [0 10], 'r')