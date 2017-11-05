A = [71 41;52 30] %matriz 2x2

norm (A,1) %norma 1
norm (A,2) %norma 2
norm (A,'inf') %norma infinita

cond(A,1) %numero de condicionamento 1
cond(A,2) %numero de condicionamento 2
cond(A,'inf') %numero de condicionamento infinito (Kp)