%Derivada Segunda

df = @ (x) DP(f,x,0.001) %definir o x que é um ponto, e deixar sempre o x na primeira derivada

DP(df,x,0.001) %definir o x que é um ponto, substituir no x o ponto

