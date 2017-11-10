A = [-7  5  -5;
    8  2  7;
    5  -20  -5]

x=randn(3,1)

N=10;

ufrgs_potencia(A,x,N)

[lambda,x1] = eig(A)