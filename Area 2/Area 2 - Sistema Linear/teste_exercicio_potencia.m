A = [3  0  0;
    0  2  0;
    0  0  -5]

x=randn(3,1)

N=10;

ufrgs_potencia(A,x,N)

[lambda1,x1] = eig(A)