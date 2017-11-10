function xn1 = ufrgs_newton(f,df,xn,N,e1,e2,e3)
pant = xn;
for i=1:N
    xn1= xn-f(xn)/df(xn);
    if abs(xn1-pant)<=e2
        break
    end
    if abs((xn1-pant)/xn1)<=e3
        break
    end
    if abs(f(xn1))<=e1
        break
    end
    xn = xn1;
    pant = xn;
end