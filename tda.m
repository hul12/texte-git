M=

M=10;
N=20;
u=zeros(M,N);
T1=5;
T3=10;

dt=0.2;
dx=1;

u(1,:)=T1;
u(i:M,N)=T3;

for n=1:(M-1)
   for i=2:(N-1)
      u(n+1,i)=((u(n,i+1)+u(n,i-1)-2*u(n,i))/(dx^2))*dt+u(n,i);   
   end
   u(n+1,1)=u(n+1,2);
end
surf(u)
disp(u)
