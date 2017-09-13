function p = posicao_falsa(f,a,b,N)
f=@ (x)    [(x-3)^2]-[2*cos(x-2)]

for i=1:N
    p=[[a*f(b)]-[b*f(a)]]/[f(b)-f(a)];
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
end