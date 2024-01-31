M=20;
N=30;
u=zeros(N,M);
T1=10;
T2=25;
T3=50;
for i=1:N
  u(i,1)=T2;
  u(i,M+1)=T3;
end
for i=1:20
   for j=2:M
      u(N+1-i,j)=(u(N+1-i+1,j+1)+u(N+1-i+1,j-1))/2;
   end
end
surf(u)
disp(u)