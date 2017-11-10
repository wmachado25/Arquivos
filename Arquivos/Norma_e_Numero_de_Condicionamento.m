A = [71 41;52 30] %matriz 2x2
B = [100 70]

norm (A,1) %norma 1
norm (A,2) %norma 2
norm (A,'inf') %norma infinita

norm (B,1)
norm (B,2)
norm (B,3) %norma 3
norm (B,'inf')

cond(A,1) %numero de condicionamento 1
cond(A,2) %numero de condicionamento 2
cond(A,'inf') %numero de condicionamento infinito (Kp)