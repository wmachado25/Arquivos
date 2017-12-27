f = @ (x) cos(x)

x = [rand(1,3)] %melhor usar as raizes do polinomio de legender quer fica 2*n-1, usar calculo automatico para polinomios de ordem superior

I = gauss(f,-1,1,x)