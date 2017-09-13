function p = ufrgs_bissecao_2(f,a,b,N)
f=@ (x)    exp(x)+sin(x)-2

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
  
end
