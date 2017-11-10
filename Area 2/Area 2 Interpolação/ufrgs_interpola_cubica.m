function [a,f]=ufrgs_interpola_cubica (x,y)

n = length(x);
A=zeros(n,n);
for i=2:n-1
A(i,i-1)=
A(i,i)=
A(i,i+1)=
end

a = A\y;

f=@(x) 0
for i=1:n
    f=@(x) a(i)+b(i)(x-x
end