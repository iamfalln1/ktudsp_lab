//To make a digital IIR Filter
clc;
clear;
ieee(0);
pi=%pi; 
f1 =1000; // input('Enter the pass band edge (Hz )= ');
f2 =3000; // input('Enter the stop band edge (Hz )= ');
k1 = -1; // input('Enter the pass band attenuation (dB)= ' );
k2 = -15; // input('Enter the stop band attenuation (dB)= ' );
fs =10000; // input('Enter the sampling rate (Hz )= ');
 // Digital filter specifications(rad)
w1 = 2*pi*f1*1/fs;
w2 = 2*pi*f2*1/fs;
// Pre warping
o1 = 2*fs*tan(w1 /2);
o2 = 2*fs*tan(w2 /2);
// Design of analog filter
n = log10(((10.^((-k1)/10))-1)/((10.^((-k2)/10))-1))./(2*log10(o1/o2));
n = round(n);
wn = o2./((10.^(- k2 /10) -1).^(1/(2* n)));
h = buttmag(n,wn,1:2*pi*fs);
mag = 20*log10(h);
// Converting analog to digital filter
hz = iir(n,'lp','butt',0.25,[]);
[hzm,fr ] = frmag(hz,256);
magz = 20*log10(hzm);
subplot(2,1,1);
plot2d((1:2*pi*fs),mag);
title('Analog IIR Lowpass Filter','fontsize',3);
xlabel('Analog Frequency in rads/s','fontsize',2);
ylabel('dB','fontsize',2);
xgrid(1);
subplot(2,1,2);
plot2d(fr,magz); 
title('Digital IIR Lowpass Filter','fontsize',3);
xlabel('Digital Frequency','fontsize',2);
ylabel('dB','fontsize',2);
xgrid(1);
