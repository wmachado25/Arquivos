function I = gauss(f,a,b,x)

N = length(x)
X = zeros(N,N);
B = zeros(N,1);

for i=1:N
    X(i,:) = x.^(i-1);
    if mod(i,2) == 1
    B(i) = 2/i;
    end
end
A = X\B;
t=@(x) (b+a)/2+(b-a)/2*x;
I = ((b-a)/2)*f(t(x))*A;