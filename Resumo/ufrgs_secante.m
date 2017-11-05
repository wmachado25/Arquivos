
function xn1 = ufrgs_secante(f,xn,xnm1,N,e1,e2,e3)
pant = xn;
for i=1:N
    xn1=((xn*f(xnm1))-(xnm1*f(xn)))/(f(xnm1)-f(xn));
    if abs(xn1-pant)<=e2
        break
    end
    if abs((xn1-pant)/xn1)<=e3
        break
    end
    if abs(f(xn1))<=e1
        break
    end
    xnm1 = xn;
    xn = xn1;
    pant = xn;
end