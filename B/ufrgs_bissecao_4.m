function p = ufrgs_bissecao_4(f,a,b,N)
f=@ (x)   ((x-3)^2)-(2*cos(x-2))

for i=1:N
    p=(a+b)/2;
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
  
end
