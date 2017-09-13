f=@ (x)    [sqrt(x)]-[2*log(x)]-1

g1=@ (x) [sqrt(x)]
g2=@ (x) [2*log(x)]+1


figure(1)
fplot(f,[0.5 1.5])


figure(2)
fplot(g1,[0.5 1.5], 'r')
hold %une os graficos
fplot(g2,[0.5 1.5], 'b')