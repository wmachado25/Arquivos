x=[1;
   2; 
   3]

y=[1.2;
   1.6; 
   2.3]

plot (x,y,'o')

f1=@(x) x.^2
f2=@(x) x.^1
f3=@(x) x.^0

F=@(x) [f1(x) f2(x) f3(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)
c=k(3)

y=@(x) a*x^2+b*x+c

hold on
fplot (y,[0 5])