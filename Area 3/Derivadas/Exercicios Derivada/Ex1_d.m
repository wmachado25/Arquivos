% f = @(x) sin(cos(exp(x) + 1))

dh1 = @ (x) DP(f,x,0.01)
H1 = DP(dh1,1,0.01)

dh2 = @ (x) DP(f,x,0.001)
H2 = DP(dh2,1,0.001)