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
   3.40; 
   5.04; 
   6.43; 
   7.71;
   8.93;
   10.11;
   11.26;
   12.39;
   13.51;
   14.62]

plot (x,y,'o')

f1=@(x) x.^0
f2=@(x) x.^1
f3=@(x) x.^2

F=@(x) [f1(x) f2(x) f3(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)
c=k(3)

y=@(x) a+b*x+c*x^2

hold on
fplot (y,[0 100])