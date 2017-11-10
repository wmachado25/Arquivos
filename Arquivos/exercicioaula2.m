A = [3 0 0; 0 2 0; 0 0 -5]

x0=randn(3,1)

[l,x] = ufrgs_potencia(A,x0,10)

[l1,x1] = eig(A)