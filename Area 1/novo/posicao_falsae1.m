function p = posicao_falsae1(f,a,b,e1,N)
f=@ (x)    [(x-3)^2]-[2*cos(x-2)]

for i=1:N
    p=[[a*f(b)]-[b*f(a)]]/[f(b)-f(a)];
    
    if abs(f(p))<=e1
        break
    end
        
    
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
end
disp(N)