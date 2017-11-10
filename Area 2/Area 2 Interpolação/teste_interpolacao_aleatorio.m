y=rand(10, 1)
x=rand(10, 1)

[a,f]=ufrgs_interpola (x,y)

plot(x,y, 'o')
hold all
fplot(f, [0 1])