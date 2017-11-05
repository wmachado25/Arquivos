function xn1 = metodo_newton(f,df,xn,e1,N)
f=@ (x)    cos(x)-x
df=@ (x)   -sin(x)-1

for i=1:N
    xn1= xn-f(xn)/df(xn);
    
    if abs(f(xn1))<=e1
        break
    end
    xn = xn1;
end