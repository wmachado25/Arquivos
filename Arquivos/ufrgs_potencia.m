function [lambda,x]=ufrgs_potencia(A,x,N)

for i=1:N
    x=A*x/norm(A*x);
end
lambda = x'*A*x;