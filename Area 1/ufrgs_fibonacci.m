%Fibonacci - William Machado
function ans = ufrgs_fibonacci(i)
if (i == 1)  || (i == 2)
    ans = 1;
else
    ans = ufrgs_fibonacci(i-1) + ufrgs_fibonacci(i-2)
end
disp(ans)