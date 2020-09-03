////////////To generate basic discrete signal gerations
clc;
clear;
//ieee(1); //to add floating point exception mode
xdel(winsid()); //Deletes all graphics windows
n = 0:1:50; //Discrete time, n
f = 0.03; //Frequency
a = 1; //Amplitude
pi = %pi; //%pi is defined for pi
//Sine Wave
x1 = a*sin(2*pi*f*n);
subplot(331);
plot2d3(n,x1) //to plot vertical lines (MATLAB STEM Eq.)
title('Sine Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2,"color","black");
ylabel("Amplitude, x[n]","fontsize",2,"color","black");
//Cosine wave
x2 = a*cos(2 *pi*f*n);
subplot(332);
plot2d3(n,x2);
title('Cosine Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Impulse wave
t1=-10:10;
x3=[zeros(1,10) 1 zeros(1,10)];
//Another way for generating Impulse Wave
//x3=[zeros(1,21)];
//x3(1,11)=1;
subplot(333);
plot2d3(t1,x3);
title('Impulse Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Ramp wave
t2 = 0:10;
x4 = t2;
subplot(334);
plot2d3(t2,x4);
title('Ramp Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//Exponential wave
t3 = 0:10;
x5 = exp(t3);
subplot(335);
plot2d3(t3,x5);
title('Exponential Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
//Random wave
x6 = rand(1,100); //rand(row,column) gives a random matrix
subplot(336);
plot2d3(1:length(x6),x6);
title('Random Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
//Unit Step Wave
n1=-10:10;
x7=[zeros(1,10) ones(1,11)];
//Another way
//x7=ones(1,length(n1));
//for i=1:10
//    x7(1,i)=0;
//end
subplot(337);
plot2d3(n1,x7);
title('Unit Step Wave','color','red','fontsize','3');
xlabel("Discrete Time,n","fontsixe",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");



