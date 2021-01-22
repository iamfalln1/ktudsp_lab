///////To Generate Amplitude Modulation Signal
clc;
clear;
xdel(winsid());
pi=%pi;
//to generate carrier signal
fc = 5000;
Ac = 10;
t = 0:0.00001:0.01;
Vc = Ac*sin(((2*pi)*fc)*t);
subplot(311)
plot(t,Vc)
title('Carrier Wave','color','red','fontsize',3);
xlabel("Continuous Time, t","fontsize",2,"color","black");
ylabel("Amplitude, x(t)","fontsize",2,"color","black");
//to generate modulating signal
fm = 500;
Am = 5;
Vm = Am*sin(((2*pi)*fm)*t);
subplot(312)
plot(t,Vm)
title('Modulating Wave','color','blue','fontsize',3);
xlabel("Continuous Time, t","fontsize",2,"color","black");
ylabel("Amplitude, x(t)","fontsize",2,"color","black");
//to generate modulation signal with modulation index, m = 0.5
m = Am/Ac;
Vt = (Ac*(1+m*sin(((2*pi)*fm)*t))) .*sin(((2*pi)*fc)*t);
subplot(313)
plot(t,Vt)
title('Amplitude Modulated Wave','color','green','fontsize',3);
xlabel("Continuous Time, t","fontsize",2,"color","black");
ylabel("Amplitude, x(t)","fontsize",2,"color","black");
//to generate frequency spectrum of generated AM wave
Vf = abs(fft(Vt)); //abs(fft(Vt,2048))/1024;
scf(1); //figure3
plot2d(Vf);
title('Frequency Spectrum','color','green','fontsize',3);
xlabel("Frequency, f","fontsize",2,"color","black");
ylabel("Amplitude","fontsize",2,"color","black");

