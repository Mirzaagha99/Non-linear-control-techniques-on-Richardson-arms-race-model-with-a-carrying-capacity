%linearizzato
%%inizializzazione
clear all
close all;
clear;

a=1
b=2
m=0.5
n=0.2
x_max=5
y_max=10
u=0

a1=a+10/100*a
b1=b+10/100*b
m1=m+10/100*m
n1=n+10/100*n
x_max1=x_max+10/100*x_max
y_max1=x_max+10/100*x_max

x1=0;
y1=0;

A=[-m-a*y1/x_max+2*m*x1/x_max    a-a*x1/x_max;...
     b-b*y1/y_max  -n-b*x1/y_max+2*n*y1/y_max];

B=[1-x1/x_max;1-y1/y_max];

A1=[-m1-a1*y1/x_max1+2*m1*x1/x_max    a-a*x1/x_max1;...
     b1-b1*y1/y_max  -n1-b1*x1/y_max+2*n1*y1/y_max1];

B1=[1-x1/x_max1;1-y1/y_max1];


 
C=[1 0];
D=0;
rank(ctrb(A,B))%è completamente controllabile
rank(obsv(A,C))%è completamente osservabile
Q=diag([10000,1,10000]);
R=1; 
sys=ss(A,B,C,D);                    
KK=lqi(sys,Q,R);                                       
Kf=KK(:,1:2);
Ki=KK(:,end);
rif  = 1;
dis = -0.3; 
td=10;% il disturbo parte dall'istante 10


rank(ctrb(A,B))
rank(obsv(A,C))

x_ini=[0.1;0.1]

rank(ctrb(A1,B))
rank(obsv(A1,C))


Am=[-0.5 0;0 -0.2]
Bm=[1;1]
Cm=[1 0]
Dm=0

Qm=diag([10000,1,10000]);
Rm=1;  
sys=ss(Am,Bm,Cm,Dm);                    
KKm=lqi(sys,Qm,Rm);                                       
Kfm=KKm(:,1:2);
Kim=KKm(:,end);