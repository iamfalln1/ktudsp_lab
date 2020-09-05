////////////To generate basic discrete signal gerations
clc;
clear;
//ieee(1); //to add floating point exception mode
xdel(winsid()); //Deletes all graphics windows
n = 0:50; //Discrete time, n
f = 0.03; //Frequency
a = 5; //Amplitude
pi = %pi; //%pi is defined for pi
//Sine Wave
x1 = a*sin(2*pi*f*n);
subplot(331);
plot2d3(n,x1,2) //to plot vertical lines (MATLAB STEM Eq.)
title('Sine Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2,"color","black");
ylabel("Amplitude, x[n]","fontsize",2,"color","black");
//Cosine wave
x2 = a*cos(2*pi*f*n);
subplot(332);
plot2d3(n,x2,2);
title('Cosine Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Square Wave
d=a*squarewave(2*pi*f*n);
subplot(333);
plot2d3(n,d,2);
title('Square Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Impulse wave
n1=-10:10;
x3=[zeros(1,10) 1 zeros(1,10)];
subplot(334);
plot2d3(n1,x3,2);
title('Impulse Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Unit Step Wave
n1=0:50;
x7=ones(n1);
subplot(335);
plot2d3(n1,x7,2);
title('Unit Step Wave','color','red','fontsize','3');
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
//Ramp wave
n1 = 0:10;
x4 = a*n1;
subplot(336);
plot2d3(n1,x4,2);
title('Ramp Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Exponential wave
n1=0:5
x5 =exp(n1);
subplot(337);
plot2d3(n1,x5,2);
title('Exponential Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
//Sinc Wave
n=-50:50;
y =sinc(2*%pi*n*f);
subplot(338);
plot2d3(n,y,2);
title('Sinc Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
//Random wave
x6 = a*rand(1,50); //rand(row,column) gives a random matrix
subplot(339);
plot2d3(1:length(x6),x6,2);
title('Random Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");



