function x = ufrgs_eqs_linear(A,B) 
 k = [A B]	
 S = rref(k);	
 x = linsolve(A,B)
 format rat
 disp (x) 