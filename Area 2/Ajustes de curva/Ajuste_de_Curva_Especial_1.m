%Nao podemos computar numeros negativos nem zeros na tabela
%O algoritmo depende de log(x)

x=[10; 
   20; 
   30; 
   40;
   50]

y=[7.90; 
   9.42; 
   15.54; 
   18.49;
   23.67]

plot (x,y,'o')

f1=@(x) x.^0 %. serve para fazer cada ponto do vetor elevado na 1
f2=@(x) log10(x)

z=(1.0).*log10(y)

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

a=10^k(1)
b=k(2)

y=@(x) (1.0).*(a*x^b)

hold on
fplot (y,[10 50])