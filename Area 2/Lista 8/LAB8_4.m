%Interpolacao, uma funcao que passe em todos os pontos!

x=[0; 
   1;
   2;
   3]

y=[0;
  0;
  0;
  12]

plot (x,y,'o')

f1=@(x) x.^3
f2=@(x) x.^2
f3=@(x) x.^1
f4=@(x) x.^0

F=@(x) [f1(x) f2(x) f3(x) f4(x)] %f no formato de linha

k=ufrgs_ajuste(x,y,F)

a=k(1)
b=k(2)
c=k(3)
d=k(4)

y=@(x) a*x^3+b*x^2+c*x+d

hold on
fplot (y,[-10 10])

%O valor de "d" pode ser considerado zero ao final da analise, pois eh muito pequeno