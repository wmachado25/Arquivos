function x=mat_newton(F,J,z,N)

for i=1:N
    h=J(z)\-F(z);
    x=z+h;
    z=x;
end