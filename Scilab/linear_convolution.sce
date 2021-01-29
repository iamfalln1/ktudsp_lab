//To perform Convolution on given sequences
// 1) Linear Convolution using inbuilt function
clc ;
close;
clear;
ieee(1);
a = input('Enter starting point of x[n]: ');
b = input('Enter starting point of y[n]: ');
x = input('First sequence: ');
h = input('Second Sequence: ');
z = conv(x,h);
m = length(x);
n = length(h);
nx = a:(a+m-1);
nh = b:(b+n-1);
nz = a+b:length(z)+a+b-1;
scf(0);
plot2d3('gnn',nx,x,2);
f = gca();
f.x_location = "origin";//get current axes
f.y_location = "origin"//to change reference axis
title('First Sequence','fontsize',3);
xlabel("Discrete Time, n","fontsize",2);
ylabel("x[n]","fontsize",2);
scf(1);
plot2d3(nh,h,2);
f = gca(); 
f.x_location = "origin"; 
f.y_location = "origin"
title('Second Sequence','fontsize',3);
xlabel("Discrete Tine, n","fontsize",2);
ylabel("h[n]","fontsize",2);
scf(2);
plot2d3('gnn',nz,z,3);
f = gca();
f.x_location = "origin";
f.y_location = "origin"
title('Convolution Sequence','fontsize',3);
xlabel('Discrete Time, n','fontsize',2);
ylabel('z[n]','fontsize',2);
disp("Convolution Sum = ",z);
// 2) Linear Convolution using Convolution Sum formula
for i = 1 : n + m - 1
    conv_sum = 0;
    for j = 1 : i
        if (((i - j + 1) <= n) & (j <= m))
            conv_sum = conv_sum + x(j) * h(i - j + 1);
        end;
        Z(1,i) = conv_sum;
    end;    
end;
disp('Convolution Sum using Direct Formula = ',Z)



