%Parte grafica do problema

g1=@(x) x^2+1
g2=@(x) sqrt(4-4*x^2)
g3=@(x) -sqrt(4-4*x^2) %Nao intersecciona a parabola

figure (1)
fplot(g1,[-1 1], 'r')
hold %une os graficos
fplot(g2,[-1 1], 'b')

f=@(x) x^2+1-sqrt(4-4*x^2)

ufrgs_bissecao(f,0.6,1,1000)
ufrgs_pfalsa(f,0.6,1,24,0,0,0)
ufrgs_secante(f,0.6,1,10,0,0,0)

y1=(0.6813)^2+1;
disp (y1)

ufrgs_bissecao(f,-1,-0.6,1000)
ufrgs_pfalsa(f,-1,-0.6,24,0,0,0)
ufrgs_secante(f,-1,-0.6,10,0,0,0)

y2=(-0.6813)^2+1;
disp (y2)


%Utilizacao da Jacobiana (derivadas parciais)
F=@(z) [z(1)^2-z(2)+1;
       -4*z(1)^2-z(2)^2+4]
   
J=@(z) [2*z(1)  -1;
    -8*z(1)  -2*z(2)]

z=[  -5;
     5]

N=10
x=mat_newton(F,J,z,N)

%Iniciamos no ponto (-5,5)
%Posteriormente, obtemos uma das respostas para o problema
%A resposta eh uma das raizes encontradas anteriormente