function dx =DC(f,x,h)

dx = (f(x+h) - f(x-h)) /(2*h)

% E =  DC(f,1,0.1) - cos (1)