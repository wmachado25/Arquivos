%Nao podemos computar numeros negativos nem zeros na tabela
%O algoritmo depende de ln(y)

x=[10; 
   20; 
   30; 
   40;
   50;
   60;
   70;
   80;
   90;
   100]

y=[7.90; 
   9.42; 
   15.54; 
   40.49;
   23.67;
   29.40;
   40.71;
   32.54;
   39.64;
   41.62]

plot (x,y,'o')

f1=@(x) x.^2 %. serve para fazer cada ponto do vetor elevado na 1
f2=@(x) x.^1
f3=@(x) x.^0

z=(1.0).*log(y)

F=@(x) [f1(x) f2(x) f3(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

a=k(1)
b=k(2)
c=exp(k(3))

y=@(x) (1.0).*c*exp(a*x^2+b*x)

hold on
fplot (y,[10 100])