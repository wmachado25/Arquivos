%Integral do seno de X entre 0 - pi
f = @ (x) sin(x)
N = 10000
I1 = ponto_medio(f,0,pi,N)
E1 = 2 - I1
I2 = trapezio(f,0,pi,N)
E2 = 2 - I2
I3 = simpson(f,0,pi,N)
E3 = 2 - I3
%2 é o resultado certo da integral na função