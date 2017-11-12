%Nao podemos computar numeros negativos nem zeros na tabela
%O algoritmo depende de ln(x)

x=[10; 
   20; 
   30; 
   40;
   50]

y=[7.90; 
   9.42; 
   15.54; 
   20.49;
   26.68]

plot (x,y,'o')

f1=@(x) x.^0 %. serve para fazer cada ponto do vetor elevado na 1
f2=@(x) x.^1

z=(1.0).*log(y)

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

a=exp(k(1))
b=exp(k(2))

y=@(x) (1.0).*(a*b^x)

hold on
fplot (y,[10 50])