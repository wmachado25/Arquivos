f=@ (x)   ((x-3)^2)-(2*cos(x-2))

g1=@ (x) (x-3)^2
g2=@ (x) 2*cos(x-2)


figure(1)
fplot(f,[-10 10])


figure(2)
fplot(g1,[1 4], 'r')
hold %une os graficos
fplot(g2,[1 4], 'b')