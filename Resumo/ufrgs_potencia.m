function [lambda,x]=ufrgs_potencia(A,x,N)

for i=1:N
    x = A*x/norm(A*x);
end

lambda = x'*A*x;

%[W,d] = eig(mat);
%lambdas = diag(d);
%imax = find(lambdas == max(lambdas));
%V=conj(inv(W));
%lambda = lambdas(imax)
%w = W(:,imax)
%v = real(V(imax,:)).'

% Acha o autovalor dominante de A e seu autovetor correspondente.
%
% [lambda,x]=ufrgs_potencia(A,x,N)
