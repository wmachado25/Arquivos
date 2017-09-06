%Fibonacci - William Machado
function [F] = ufrgs_fibonacci(i)
F(1) = 1;
F(2) = 1;
for i=3:i
    F(i) = F(i-1) + F(i-2);
end
disp(F(i))