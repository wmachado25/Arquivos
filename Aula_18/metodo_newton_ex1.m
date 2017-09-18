function xn1 = metodo_newton_ex1 (f,df,xn,e1,N)
f=@(x) exp(x/2)+(x^2)-3
df=@ (x) (exp(x/2)/2)+2*x   

for i=1:N
    xn1= xn-f(xn)/df(xn);
    
    if abs(f(xn1))<=e1
        break
    end
    xn = xn1;
end