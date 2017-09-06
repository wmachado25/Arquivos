%Fibonacci
function [F] ufrgs_fibonacci(x)
for i=3:x;
    F(1) = 1;
    F(2) = 1;
    F(i) = F(i-1) + F(i-2);
    s = F(i);
end
disp(s)