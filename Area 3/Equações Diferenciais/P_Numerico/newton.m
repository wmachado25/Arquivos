function [x]=newton(f,xi,N,h)

%[x]=newton(f,xi,N,h)
%f deve ser declarada como vetor linha
%xi deve ser declarado como vetor coluna

x=xi;

 for i=1:N
     F=(f(x))';
     J=jacobiana(f,x,h);
     x=x-J\F
 end

end

