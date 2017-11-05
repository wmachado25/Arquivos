f=@ (x)    exp(-x^2)-2*x

g1=@ (x) exp(-x^2)
g2=@ (x) 2*x


figure(1)
fplot(f,[-100 100])


figure(2)
fplot(g1,[-100 100], 'r')
hold %une os graficos
fplot(g2,[-100 100], 'b')