function [a,f]=ufrgs_interpola (x,y)

n = length(x);
A = [];
for i=1:n
A =[x.^(i-1) A];
end
a = A\y;

f=@(x) 0
for i=1:n
    f=@(x) f(x)+a(i)*x^(n-i)
end