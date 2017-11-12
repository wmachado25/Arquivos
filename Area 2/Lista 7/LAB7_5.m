%Parte grafica do problema

g1=@(x) x^2
g2=@(x) cos(x)

figure (1)
fplot(g1,[-1 1], 'r')
hold %une os graficos
fplot(g2,[-1 1], 'b')

f=@(x) x^2-cos(x)

ufrgs_bissecao(f,0.8,0.9,1000)
ufrgs_pfalsa(f,0.8,0.9,24,0,0,0)
ufrgs_secante(f,0.8,0.9,10,0,0,0)

y1=cos(0.8241);
disp (y1)

ufrgs_bissecao(f,-0.9,-0.8,1000)
ufrgs_pfalsa(f,-0.9,-0.8,24,0,0,0)
ufrgs_secante(f,-0.9,-0.8,10,0,0,0)

y2=cos(-0.8241);
disp (y2)


%Utilizacao da Jacobiana (derivadas parciais)
F=@(z) [z(1)^2-z(2);
       cos(z(1))-z(2)]
   
J=@(z) [2*z(1)  -1;
    -sin(z(1))  -1]

z=[  -5;
     5]

N=10
x=mat_newton(F,J,z,N)

%Iniciamos no ponto (-5,5)
%Posteriormente, obtemos uma das respostas para o problema
%A resposta eh uma das raizes encontradas anteriormente