f=@(y,t) y*(1-y)
t0=0;
y0=1/2;
h=1; %diminuir
N=10; %aumentar

%para melhorar a precisao

y_ana=@(t) exp(t)/(1+exp(t))
fplot (y_ana, [0 10], 'r');
hold on

[y1,t1]=euler(f,t0,y0,h,N)
plot (t1,y1,'-ob');

[y2,t2]=predicao_correcao(f,t0,y0,h,N)
plot (t2,y2,'-og');

[y3,t3]=euler_melhorado(f,t0,y0,h,N)
plot (t3,y3,'-om');

[y4,t4]=runge_kutta_4(f,t0,y0,h,N)
plot (t4,y4,'-oy');