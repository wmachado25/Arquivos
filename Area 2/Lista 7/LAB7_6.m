F=@(z) [3*z(1)-cos(z(2)*z(3)+z(3))-0.5;
       4*z(1)^2-25*z(2)^2+0.4*z(2)+2;
       exp(-z(1)*z(2))+2*z(1)-5*(z(3))-10]
   
J=@(z) [3  z(3)*sin(z(2)*z(3)+z(3))  (z(2)+1)*sin(z(2)*z(3)+z(3));
    8*z(1)  -50*z(2)+0.4  0;
    -z(2)*exp(-z(1)*z(2))+2  -z(1)*exp(-z(1)*z(2))  -5]

z=[  2;
    2;
     -2]

N=10
x=mat_newton(F,J,z,N)

%Depois de alguns chutes, encontrei o vetor z(2,2,-2)
%Este vetor nos da uma das respostas que o problema pede (o modulo de x,y e z menores do que 2)
%A substituicao nao deu exatamente zero na funcao, mas um valor aproximado