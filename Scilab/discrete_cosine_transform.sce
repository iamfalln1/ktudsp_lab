//To perform Discrete Cosine Transform (block compression)
clc;
clear;
ieee(0);
x = 75; 
I1 = linspace(1,100);
disp("Input Matrix =",I1);
I2 = dct(I1);
I3 = [I2(1:x),zeros(1,(100-x))];
I4 =idct(I3);
disp("Decompressed Matrix =",I4);
//Mean Square Error
for i = 1:100
    [m(1,i)] = abs(I1(i)- I4(i))^2;
end
disp("Mean Square Error =",m);
