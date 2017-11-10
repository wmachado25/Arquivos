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

f1=@(x) x.^1
f2=@(x) x.^0

z=(1.0)./y %./ serve para fazer divisao elemento por elemento

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)

y=@(x) a*x+b

hold on
fplot (y,[0 5])