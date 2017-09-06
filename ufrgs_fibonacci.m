%Fibonacci - William Machado
function [F] = ufrgs_fibonacci(i)
for i=3:i
    F(1) = 1;
    F(2) = 1;
    F(i) = F(i-1) + F(i-2);
    s = F(i);
end
disp(s)