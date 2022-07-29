close all;
clear;

%a=1
b=2
m=0.5
n=0.2
x_1_max=5
x_2_max=10
u=0

syms x_1 x_2 a 
[x_1,x_2]= solve([(1-x_1/x_1_max)*(a*x_2-m*x_1)==0,(1-x_2/x_2_max)*(b*x_1-n*x_2)==0,x_1>=0,x_2>=0,x_1<=5,x_2<=10],[x_1,x_2])



J1=[-m-a*x_2(1)/x_1_max+2*m*x_1(1)/x_1_max    a-a*x_1(1)/x_1_max;...
     b-b*x_2(1)/x_2_max  -n-b*x_1(1)/x_2_max+2*n*x_2(1)/x_2_max];
[V1,Lampda1] = eig(J1)

J2=[-m-a*x_2(2)/x_1_max+2*m*x_1(2)/x_1_max    a-a*x_1(2)/x_1_max;...
     b-b*x_2(2)/x_2_max  -n-b*x_1(2)/x_2_max+2*n*x_2(2)/x_2_max];
[V2,Lampda2] = eig(J2)

J3=[-m-a*x_2(3)/x_1_max+2*m*x_1(3)/x_1_max    a-a*x_1(3)/x_1_max;...
     b-b*x_2(3)/x_2_max  -n-b*x_1(3)/x_2_max+2*n*x_2(3)/x_2_max];
[V3,Lampda3] = eig(J3)



