f=@(y,t) y*(1-y)
t0=0;
y0=1/2;
h=0.1; %diminuir
N=1000; %aumentar

%para melhorar a precisao
%com h grande não funciona

y_ana=@(t) exp(t)/(1+exp(t))
fplot (y_ana, [0 10], 'r');
hold on

[y1,t1]=euler(f,t0,y0,h,N)
plot (t1,y1,'-ob');

[y2,t2]=adams2(f,t0,y0,h,N)
plot (t2,y2,'-og');

[y3,t3]=adams3(f,t0,y0,h,N)
plot (t3,y3,'-oy');

[y4,t4]=adams4(f,t0,y0,h,N)
plot (t4,y4,'-om');

