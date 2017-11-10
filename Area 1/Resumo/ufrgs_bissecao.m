function p = ufrgs_bissecao(f,a,b,N)

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
end