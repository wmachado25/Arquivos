F=@(y,t) [-9.8+0.1*y(1)^2;
    y(1)]

Y=[0;
   100]

t0=0;
h=0.1;
N=100;

[Y,T]=runge_kutta_4_vetor(F,t0,Y,h,N)
plot(T,Y,'o-')
hold all
[Y2,T2]=euler_vetor(F,t0,Y,h,N)
plot(T2,Y2,'o-')

[T' Y']