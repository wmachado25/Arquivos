f=@(y,t) (t-y)/t
t0=2;
y2=3;
h=0.01; %diminuir
N=100; %aumentar

%para melhorar a precisao

[y1,t1]=euler(f,t0,y2,h,N)
plot (t1,y1,'-ob');
hold on

[y3,t3]=predicao_correcao(f,t0,y2,h,N)
plot (t3,y3,'-og');