function [y,t]=EulerImp(f,h,N,y0)
t=0;
y=zeros(length(y0),N+1);
y(:,1)=y0;
for i=1:N
   yi=y(:,i);
     t=t+h;
      G=@(x) (x-f(x,t)*h-yi)';
  y(:,i+1)=newton(G,yi,100,0.01); %Usando N e h do metodo de newton fixos
end

end