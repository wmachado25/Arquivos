f=@ (x)    exp(x)+sin(x)-2

g1=@ (x) +exp(x)
g2=@ (x) -sin(x)+2


figure(1)
fplot(f,[-10 10])


figure(2)
fplot(g1,[-10 10], 'r')
hold %une os graficos
fplot(g2,[-10 10], 'b')