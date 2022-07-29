%inizializzazione
close all;
clear;

a=1
b=2
m=0.5
n=0.2
x_1_max=5
x_2_max=10
u=0

rif=1
dis = 0.3;

%b

syms x_1 x_2 
[x_1,x_2]= solve([(1-x_1/x_1_max)*(a*x_2-m*x_1)==0,(1-x_2/x_2_max)*(b*x_1-n*x_2)==0,...
    x_1>=0,x_2>=0,x_1<=x_1_max,x_2<=x_2_max],[x_1,x_2])                                         


                                                                               
J1=[-m-a*x_2(1)/x_1_max+2*m*x_1(1)/x_1_max    a-a*x_1(1)/x_1_max;...
     b-b*x_2(1)/x_2_max  -n-b*x_1(1)/x_2_max+2*n*x_2(1)/x_2_max];
                                                                                
J2=[-m-a*x_2(2)/x_1_max+2*m*x_1(2)/x_1_max    a-a*x_1(2)/x_1_max;...
     b-b*x_2(2)/x_2_max  -n-b*x_1(2)/x_2_max+2*n*x_2(2)/x_2_max];



[V1,Lampda1] = eig(J1)
[V2,Lampda2] = eig(J2)



clear b
syms x_1 x_2 b
[x_1,x_2]= solve([(1-x_1/x_1_max)*(a*x_2-m*x_1)==0,(1-x_2/x_2_max)*(b*x_1-n*x_2)==0,...
    x_1>=0,x_2>=0,x_1<=x_1_max,x_2<=x_2_max],[x_1,x_2])    
J1b=[-m-a*x_2(1)/x_1_max+2*m*x_1(1)/x_1_max    a-a*x_1(1)/x_1_max;...
     b-b*x_2(1)/x_2_max  -n-b*x_1(1)/x_2_max+2*n*x_2(1)/x_2_max];
                                                                                
J2b=[-m-a*x_2(2)/x_1_max+2*m*x_1(2)/x_1_max    a-a*x_1(2)/x_1_max;...
     b-b*x_2(2)/x_2_max  -n-b*x_1(2)/x_2_max+2*n*x_2(2)/x_2_max];

J3b=[-m-a*x_2(3)/x_1_max+2*m*x_1(3)/x_1_max    a-a*x_1(3)/x_1_max;...
     b-b*x_2(3)/x_2_max  -n-b*x_1(3)/x_2_max+2*n*x_2(3)/x_2_max];

[V1b,Lampda1b] = eig(J1b)
[V2b,Lampda2b] = eig(J2b)
[V3b,Lampda3b] = eig(J3b)


