%Nao podemos computar zeros na tabela
%O algoritmo depende de 1/y

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

y=[41.62; 
   39.64; 
   32.54; 
   22.71;
   29.40;
   23.67;
   10.49;
   15.54;
   9.42;
   7.90]

plot (x,y,'o')

f1=@(x) x.^2 %. serve para fazer cada ponto do vetor elevado na 1
f2=@(x) x.^1
f3=@(x) x.^0

z=(1.0)./y

F=@(x) [f1(x) f2(x) f3(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

a=k(1)
b=k(2)
c=k(3)

y=@(x) (1.0)./(a*x^2+b*x+c)

hold on
fplot (y,[10 100])