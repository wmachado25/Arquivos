function x = ufrgs_eqs_linear(A,B) 
 k = [A B]	
 S = rref(k);	
 x = linsolve(A,B)
 format rat
 disp (x) 
 
 %Temos a fórmula: Ax=B
 %Sabendo as matrizes A e B, descobrimos a matriz x