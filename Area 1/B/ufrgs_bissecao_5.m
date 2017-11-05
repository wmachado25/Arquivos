function p = ufrgs_bissecao_5(f,a,b,N)
f=@ (x)   ((x^(1/2))-(2*log(x))-1)

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
  
end
