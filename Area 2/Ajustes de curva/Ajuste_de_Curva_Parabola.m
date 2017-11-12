x=[0; 
   10; 
   20; 
   30; 
   40;
   50;
   60;
   70;
   80;
   90;
   100]

y=[0.01; 
   7.90; 
   15.60; 
   30.44; 
   0.30;
   27.58;
   18.31;
   23.49;
   12.39;
   20.32;
   9.62]

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
fplot (y,[0 100])