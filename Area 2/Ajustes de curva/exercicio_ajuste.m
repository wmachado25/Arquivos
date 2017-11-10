x=[1 
   2 
   3 
   4 
   5]

y=[1.6666 
    0.9090 
    0.5555
    0.3703
    0.26315]

plot (x,y,'o')

f1=@(x) x.^2 %. serve para fazer cada ponto do vetor elevado ao quadrado
f2=@(x) x.^1
f3=@(x) x.^0

z=(1.0)./y %./ serve para fazer divisao elemento por elemento

F=@(x) [f1(x) f2(x) f3(x)] %f no formato de linha

k=ufrgs_ajuste(x,z,F)

a=k(1)
b=k(2)
c=k(3)

y=@(x) (1.0)./(a*x^2+b*x+c)

hold on
fplot (y,[0 5])