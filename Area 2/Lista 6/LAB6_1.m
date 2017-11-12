%Temos que Ax=B
%Basta colocar as matrizes A e B, para descobrir a matriz x

A = [1  -1  0  0  0;
    -1  2  -1  0  0;
    0  -1  2.001  -1  0;
   0  0  -1  2  -1;
  0  0  0  1  -1]

B = [1;
    1;
    1;
   1;
  1]

ufrgs_eqs_linear(A,B) 