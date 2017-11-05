function p = ufrgs_pfalsa(f,a,b,N,e1,e2,e3)
pant = a;
for i=1:N
    p=((a*f(b))-(b*f(a)))/(f(b)-f(a));
    if abs(p-pant)<=e2
        break
    end
    if abs((p-pant)/p)<=e3
        break
    end
    if abs(f(p))<=e1
        break
    end
    if  f(a)*f(p)<0
        b=p;
    else
        a=p;
    end
    pant = p;
end
disp(i)