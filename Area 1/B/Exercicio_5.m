f=@ (x)   ((x^(1/2))-(2*log(x))-1)

g1=@ (x) (x^(1/2))
g2=@ (x) ((2*log(x))-1)


figure(1)
fplot(f,[-10 10])


figure(2)
fplot(g1,[5 6], 'r')
hold %une os graficos
fplot(g2,[5 6], 'b')