%Exercicio para descobrir a solucao de uma equacao nao linear
F=@(z) [z(1)^2+z(2)-3;
       z(1)+z(2)^2-5]
%A matriz J leva as derivadas parciais da funcao F   
J=@(z) [2*z(1) 1;
    1      2*z(2)];
%O z eh o ponto de inicio, aleatorio (5,5)
z=[  5;
    5];
%Convergiu para o ponto (1,2)
N=10
x=mat_newton(F,J,z,N)
%Se F(x)=0, o ponto para onde convergiu anteriormente eh uma das solucoes