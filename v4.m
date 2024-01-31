A1=[0 1 0 ; 0 0 1 ; -1 -2 -3];
A2=[-1 1 ; 0 -1];
A3=[0 1 0 ; 0 0 1 ; 0 -1 -2 ];
B1=[0;0;1];
B2=[0;1];
B3=[0;0;1];
C1=[1;0;0];
C2=[1;1];
C3=[1;1;0];

SYS1 = ss(A1,B1,C1,0);
SYS2 = ss(A2,B2,C2,0);
SYS3 = ss(A3,B3,C3,0);

eig(A1)
eig(A2)
eig(A3)

ctrb(sys1)
ctrb(sys2)
ctrb(sys3)

obsv(sys1)
obsv(sys2)
obsv(sys3)