x=[0; 
   0.1;
   0.2;
   0.3;
   0.4;
   0.5;
   0.6;
   0.7;
   0.8;
   0.9;
   1]

y=[3.21; 
   2.62;
   2.47;
   2.01;
   1.81;
   1.59;
   1.23;
   1.30;
   1.08;
   0.86;
   0.96]

plot (x,y,'o')

f1=@(x) x.^1 %. serve para fazer cada ponto do vetor elevado na 1
f2=@(x) x.^0

z=(1.0).*log(y)

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

a=exp(k(2))
b=k(1)

y=@(x) (1.0).*a*exp(b*x)

hold on
fplot (y,[0 1])

%Como alguns pontos ficaram de fora do grafico, 
%temos como resposta valores aproximados