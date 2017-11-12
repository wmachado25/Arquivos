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
   9.42; 
   15.54; 
   40.49;
   23.67;
   29.40;
   40.71;
   32.54;
   39.64;
   41.62]

plot (x,y,'o')

f1=@(x) x.^1
f2=@(x) x.^0

F=@(x) [f1(x) f2(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)

y=@(x) a*x+b

hold on
fplot (y,[0 100])