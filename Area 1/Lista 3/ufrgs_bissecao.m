function p = ufrgs_bissecao(f,a,b,e1,N)

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
    
    if abs(f(p))<=e1
        break
    end
end
disp(i)