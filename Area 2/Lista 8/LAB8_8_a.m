x=[10; 
   12; 
   14; 
   16; 
   18;
   20]

y=[1.67; 
    1.50; 
    1.34;
    1.20;
    1.08;
    0.97]

plot (x,y,'o')

f1=@(x) x.^1
f2=@(x) x.^0

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)

y=@(x) a*x+b

hold on
fplot (y,[10 20])

%Queremos o valor de y quando x eh 15
y=-0.07*15+2.3433;
disp (y)