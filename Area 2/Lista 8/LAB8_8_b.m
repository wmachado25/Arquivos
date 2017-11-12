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

f1=@(x) exp(-x/10)
f2=@(x) exp(-x/20)

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)

y=@(x) a*exp(-x/10)+b*exp(-x/20)

hold on
fplot (y,[10 20])

%Queremos o valor de y quando x eh 15
y=0.5063*exp(-15/10)+2.4488*exp(-15/20);
disp (y)