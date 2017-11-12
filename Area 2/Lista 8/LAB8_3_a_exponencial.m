x=[1; 
   2]

y=[1;
   10]

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
fplot (y,[0 2])