clc;
close all;
clear all;
A = 4;
f = 5;
t = 0:0.01:1;
x = A*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,x);
title('Continuos time signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
%% After sampling discrete time signal
subplot(4,1,2);
stem(t,x);
title('Sampling');
xlabel('Time');
ylabel('Amplitude');
%DC level + discrete time signal
x1 = A+x;
subplot(4,1,3);
stem(t,x1);
title('DC level + decrete time signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
%%Quantization
x2 = round(x1);
subplot(4,1,4);
stem(t,x2);
title('Quantization');
xlabel('Time');
ylabel('Amplitude');
grid on;
%%Coding
x3 = dec2bin(x2);
disp(x3);
