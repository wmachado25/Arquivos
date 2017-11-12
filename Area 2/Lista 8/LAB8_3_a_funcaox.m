x=[1; 
   2]

y=[1;
   10]

plot (x,y,'o')

f1=@(x) x.^0 %. serve para fazer cada ponto do vetor elevado na 1
f2=@(x) log10(x)

z=(1.0).*log10(y)

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

c=10^k(1)
d=k(2)

y=@(x) (1.0).*(c*x^d)

hold on
fplot (y,[0 2])