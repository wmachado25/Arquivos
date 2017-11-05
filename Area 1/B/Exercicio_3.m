f=@ (x)   (x^3)-(x^2)+(3*x)-2

g1=@ (x) x^3
g2=@ (x) (x^2)-(3*x)+2


figure(1)
fplot(f,[-10 10])


figure(2)
fplot(g1,[-2 2], 'r')
hold %une os graficos
fplot(g2,[-2 2], 'b')