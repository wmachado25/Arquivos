f=@(x) cos(x)-x

g1=@(x) cos(x)
g2=@(x) x

figure(1)
fplot(f,[-10 10])

figure (2)
fplot(g1,[-10 10], 'r')
hold %une os graficos
fplot(g2,[-10 10], 'b')