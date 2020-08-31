clc;
clear;
close all;
n=0:1:50;
f=input('Enter the value of frequency');
a=input('Enter the value of amplitude');
N=input('Enter the length of unit step');
subplot(3,3,1);
y=a*sin(2*pi*f*n);
stem(n,y,'r');
xlabel('time');
ylabel('amplitude');
title('sine wave')
grid on;
subplot(3,3,2);
z=a*cos(2*pi*f*n);
stem(n,z);
xlabel('time');
ylabel('amplitude');
title('cosine wave')
grid on;
subplot(3,3,3);
s=a*square(2*pi*f*n);
stem(n,s);
xlabel('time');
ylabel('amplitude');
title('square wave')
grid on;
subplot(3,3,4);
stem(n,n);
xlabel('time');
ylabel('amplitude');
title('ramp wave')
grid on;
x=0:N-1;
d=ones(1,N);
subplot(3,3,5);
stem(x,d,'r');
xlabel('time');
ylabel('amplitude');
title('unit step wave')
grid on;