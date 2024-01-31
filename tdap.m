1)
M=100;
N=50;
u=zeros(N,M);
2)
T1=20;
for i=1:N
    u(i,1)=T2;
end
3)
  Mat(N+1,j)=T1
  Mat(i,1)=T2
  Mat(i,M+1)=T3
4)
  for i=1:N
    Mat(i,1)=T2
    Mat(i,M+1)=T3
  end
  for j=1:M+1
      Mat(N+1,j)=T1
  end
5)
    for i=1:20
        for j=2:M
            Mat(N+1-i,j)=[Mat(N+1-i+1,j+1)+Mat(N+1-i+1,j-1)]/2
        end
    end
9)
    for i=1:20
        for j=2:M
            Mat(N+1-i,j)=[Mat(N+1-i+1,j+1)+Mat(N+1-i+1,j-1)]/2
        end
         Mat(N+1-i,M+1)=Mat(N+1-i,M)
    end

    u(N+1-i,j)=((dt/dx)*u(N-i+1,j+1)+(dt/dx)*u(N-i+1,j-1)-2*(dt/dx)*u(N-i+1,j));
       
  