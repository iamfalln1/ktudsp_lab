clc;
clear;
ieee(0);
x = 40; 
I1 = linspace(1,100);
I2 = dct(I1);
I3 = [I2(1:x),zeros(1,(100-x))];
I4 =idct(I3);
//Mean Square Error
for i = 1:100
    m(i) = abs(I1(i)- I4(i))^2;
end
disp(I4);
disp(m);
