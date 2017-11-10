%Exercicio

F=@(z) [z(1)^2+z(2)-3;
       z(1)+z(2)^2-5]
   
J=@(z) [2*z(1) 1;
    1      2*z(2)];

z=[  5;
     -5];

N=10
x=mat_newton(F,J,z,N)
