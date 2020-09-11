////////////To generate basic continuous signal gerations
clc;
clear;
//ieee(1); //to add floating point exception mode
xdel(winsid()); //Deletes all graphics windows
t = 0:0.001:1; //Continuous time, t
f = 5; //Frequency
a = 5; //Amplitude
pi = %pi; //%pi is defined for pi
//Sine Wave
x1 = a*sin(2*pi*f*t);
subplot(331);
plot(t,x1) //to plot vertical lines (MATLAB STEM Eq.)
title('Sine Wave','color','red','fontsize',3);
xlabel("Continuous Time, t","fontsize",2,"color","black");
ylabel("Amplitude, x(t)","fontsize",2,"color","black");
//Cosine wave
x2 = a*cos(2*pi*f*t);
subplot(332);
plot(t,x2);
title('Cosine Wave','color','red','fontsize',3);
xlabel("Continuous Time, t","fontsize",2.5,"color","black");
ylabel("Amplitude, x(t)","fontsize",2.5,"color","black");
//Square Wave
x3=a*squarewave(2*pi*f*t);
subplot(333);
plot(t,x3);
title('Square Wave','color','red','fontsize','3');
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Ramp wave
x4 = a*t;
subplot(334);
plot(t,x4);
title('Ramp Wave','color','red','fontsize',3);
xlabel("Continuous Time, t","fontsize",2.5,"color","black");
ylabel("Amplitude, x(t)","fontsize",2.5,"color","black");
//Exponential wave
x5 = exp(t);
subplot(335);
plot(t,x5);
title('Exponential Wave','color','red','fontsize',3);
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Unit Step Wave
x7 = ones(t);
subplot(336);
plot(t,x7);
title('Unit Step Wave','color','red','fontsize','3');
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Sinc Wave
t1 =-50:50;
f1=0.0625;
y =sinc(2*%pi*t1*f1);
subplot(337);
plot(t1,y,2);
title('Sinc Wave','color','red','fontsize','3');
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Impulse Wave
n1=-10:10;
x3=[zeros(1,10) 1 zeros(1,10)];
subplot(338);
plot(n1,x3);
title('Impulse Wave','color','red','fontsize','3');
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Random wave
t=0:0.01:1;
x6 = rand(1,length(t)); //rand(row,column) gives a random matrix
subplot(339);
plot(t,x6);
title('Random Wave','color','red','fontsize',3);
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");



