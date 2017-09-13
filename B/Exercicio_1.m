f=@ (x)    exp(x/2)+x^2-3

g1=@ (x) x^2-3
g2=@ (x) -exp(x/2)


figure(1)
fplot(f,[-3 3])


figure(2)
fplot(g1,[-2 2], 'r')
hold %une os graficos
fplot(g2,[-2 2], 'b')