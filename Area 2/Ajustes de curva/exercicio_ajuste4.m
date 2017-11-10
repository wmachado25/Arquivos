%Interpolacao, uma funcao que passe em todos os pontos!

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

f1=@(x) x.^4
f2=@(x) x.^3
f3=@(x) x.^2
f4=@(x) x.^1
f5=@(x) x.^0

z=(1.0)./y %./ serve para fazer divisao elemento por elemento

F=@(x) [f1(x) f2(x) f3(x) f4(x) f5(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)
c=k(3)
d=k(4)
e=k(5)

y=@(x) a*x^4+b*x^3+c*x^2+d*x+e

hold on
fplot (y,[0 5])