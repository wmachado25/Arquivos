F=@(z) [6*z(1)-2*z(2)+exp(z(3))-2;
       sin(z(1))-z(2)+z(3);
       sin(z(1))+2*z(2)+3*(z(3))-1]
   
J=@(z) [6  -2  exp(z(3));
    cos(z(1))  -1  1;
    cos(z(1))  2  3]

z=[  -5;
    5;
     -5]

N=10
x=mat_newton(F,J,z,N)

%Depois de alguns chutes, encontrei o vetor z(-5,5,-5)
%Ele da uma das respostas que o problema pede
%A substituicao nao deu exatamente zero na funcao, mas um valor aproximado