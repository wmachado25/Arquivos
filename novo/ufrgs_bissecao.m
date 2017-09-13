function p = ufrgs_bissecao(f,a,b,N)
f=@ (x)    [sqrt(x)]-[2*log(x)]-1

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
end