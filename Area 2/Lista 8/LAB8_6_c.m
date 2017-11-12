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
f2=@(x) sin(2*pi*x/100)
f3=@(x) cos(2*pi*x/100)
f4=@(x) sin(4*pi*x/100)
f5=@(x) cos(4*pi*x/100)

F=@(x) [f1(x) f2(x) f3(x) f4(x) f5(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)
c=k(3)
d=k(4)
e=k(5)

y=@(x) a+b*sin(2*pi*x/100)+c*cos(2*pi*x/100)+d*sin(4*pi*x/100)+e*cos(4*pi*x/100)

hold on
fplot (y,[0 100])

%Prova Real com um ponto do grafico
y=8.5748-3.7874*sin(2*pi*30/100)-0.5558*cos(2*pi*30/100)-1.7628*sin(4*pi*30/100)-0.3566*cos(4*pi*30/100)
disp (y)
%Valor aproximado, observando que o grafico nao passa exatamente em cima do ponto