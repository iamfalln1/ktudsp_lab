////////////To generate basic continuous signal gerations
clc;
clear;
//ieee(1); //to add floating point exception mode
xdel(winsid()); //Deletes all graphics windows
t = 0:0.001:1; //Continuous time, t
f = 5; //Frequency
a = 1; //Amplitude
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
//Ramp wave
t2 = 0:10;
x4 = t2;
subplot(333);
plot(t2,x4);
title('Ramp Wave','color','red','fontsize',3);
xlabel("Continuous Time, t","fontsize",2.5,"color","black");
ylabel("Amplitude, x(t)","fontsize",2.5,"color","black");
//Exponential wave
t3 = 0:0.1:5;
x5 = exp(t3);
subplot(334);
plot(t3,x5);
title('Exponential Wave','color','red','fontsize',3);
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Random wave
x6 = rand(1,100); //rand(row,column) gives a random matrix
subplot(335);
plot(1:length(x6),x6);
title('Random Wave','color','red','fontsize',3);
xlabel("Continuous Time,t","fontsize",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");
//Unit Step Wave
t4=0:10;
x7=ones(1,length(t4));
//Another way
//x7=ones(1,length(t4));
//for i=1:10
//    x7(1,i)=0;
//end
subplot(336);
plot(t4,x7);
title('Unit Step Wave','color','red','fontsize','3');
xlabel("Continuous Time,t","fontsixe",2,"color","black");
ylabel("Amplitude,x(t)","fontsize",2,"color","black");



