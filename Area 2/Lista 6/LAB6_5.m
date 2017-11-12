A = [4  41  78; 
    48  28  21; 
    26  13  11]

x0=randn(3,1)

[l,x] = ufrgs_potencia(A,x0,10)

[l1,x1] = eig(A)