//To verify sampling theorem
clc;
clear;
close;
clf;
fm = 100;//input('Enter the input signal frequency : '); 
k = 2;//input('Enter the number of Cycles of input signal : ');
A = 2;//input('Enter the amplitude of input signal : ');
pi= %pi;
tm =0:1/(fm*fm):k/fm;
x = A*cos(2*pi*fm*tm);
plot(tm,x,'Linewidth',1.5);
xlabel('Time','fontsize',3);
ylabel('Amplitude','fontsize',3);
xgrid(1); 

//UNDERSAMPLING//
fnyq = 2*fm;
fs = 0.75*fnyq;
n = 0:1/fs:k/fm;
xn = A*cos(2*pi*fm*n);
plot( n,xn,'r','Linewidth',1.5);

//NYQUIST SAMPLING//
fs = fnyq;
n = 0:1/fs:k/fm;
xn = A*cos(2*pi*fm*n);
a = gca();
plot(n,xn,'g','Linewidth',1.5);

//OVERSAMPLING//
fs = 10*fnyq;
n = 0:1/fs:k/fm;
xn = A*cos(2*pi*fm*n);
a = gca();
plot(n,xn,'m','Linewidth',1.5);
legend('Original Signal','Under Sampled Signal','Nyquist Signal','Over Sampled Signal');
