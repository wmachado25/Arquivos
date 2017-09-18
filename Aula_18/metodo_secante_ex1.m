function xn1 = metodo_secante_ex1(f,xn,xnm1,e1,N)
f=@(x) exp(x/2)+(x^2)-3

for i=1:N
    xn1=[[xn*f(xnm1)]-[xnm1*f(xn)]]/[f(xnm1)-f(xn)];
    
    if abs(f(xn1))<=e1
        break
    end
        
    
    xnm1 = xn;
    xn = xn1;
end