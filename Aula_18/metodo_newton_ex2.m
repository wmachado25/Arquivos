function xn1 = metodo_newton_ex2(f,df,xn,e1,N)
f=@(x) exp(x)+sin(x)-2
df=@ (x)   

for i=1:N
    xn1= xn-f(xn)/df(xn);
    
    if abs(f(xn1))<=e1
        break
    end
    xn = xn1;
end