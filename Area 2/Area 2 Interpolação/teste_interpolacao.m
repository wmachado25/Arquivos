y=[0.3
   0.2
   0.15]
x=[1.1
   1.2
   1.4]

[a,f]=ufrgs_interpola (x,y)

plot(x,y, 'o')
hold all
fplot(f, [1 2])