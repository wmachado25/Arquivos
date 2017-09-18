function p = posicao_falsa(f,a,b,e2,N)
pant = a;
for i=1:N
    p=((a*f(b))-(b*f(a)))/(f(b)-f(a));
    if abs(p-pant)<=e2
        break
    end
    
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
    pant = p;
    

end
disp (i)