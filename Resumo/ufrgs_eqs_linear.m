function x = ufrgs_eqs_linear(A,B)

k = [A B]	
S = rref(k);	
format rat
disp (S)