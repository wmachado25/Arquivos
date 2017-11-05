function p = ufrgs_bissecao_1(f,a,b,N)
f=@ (x)    exp(x/2)+x^2-3

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
  
end
