////////////To generate basic discrete signal gerations
clc;
clear;
//ieee(1);
xdel(winsid());
n=0:1:50;
f=0.03;
a=1;
pi=%pi;
//Sine Wave
x1=a*sin(2*pi*f*n);
subplot(331);
plot2d3(n,x1)
title('Sine Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2,"color","black");
ylabel("Amplitude, x[n]}","fontsize",2,"color","black");
//cosine wave
x2=a*cos(2*pi*f*n);
subplot(332);
plot2d3(n,x2);
title('Cosine Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//impulse wave
t1=-10:10;
x3=[zeros(1,10) 1 zeros(1,10)];
subplot(333);
plot2d3(t1,x3);
title('Impulse Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//ramp wave
t2=0:10;
x4=t2;
subplot(334);
plot2d3(t2,x4);
title('Ramp Wave','color','red','fontsize',3);
xlabel("Discrete Time, n","fontsize",2.5,"color","black");
ylabel("Amplitude, x[n]","fontsize",2.5,"color","black");
//exponent wave
t3=0:10;
x5=exp(t3);
subplot(335);
plot2d3(t3,x5);
title('Exponential Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
//random wave
x6 = rand(1,100);
subplot(336);
plot2d3(1:length(x6),x6);
title('Random Wave','color','red','fontsize',3);
xlabel("Discrete Time,n","fontsize",2,"color","black");
ylabel("Amplitude,x[n]","fontsize",2,"color","black");
