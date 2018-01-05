function [J]=jacobiana(f,x,h)

%[J]=jacobiana(f,x,h)
%x deve ser declarado como vetor coluna

n=length(x);
%J=zeros(length(f(x)),n);

for i=1:n
    H=zeros(n,1);
    H(i)=h;
    J(:,i)=(f(x+H)-f(x-H))/(2*h);
end

end
