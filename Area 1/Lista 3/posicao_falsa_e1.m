function p = posicao_falsa_e1(f,a,b,e1,N)

for i=1:N
    p=((a*f(b))-(b*f(a)))/(f(b)-f(a));
       
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
    
    if abs(f(p))<=e1
        break
    end
end
disp (i)