clc;
clear all;
close all;

f = -2:0.01:2;
x = 4*sinc(4*f*pi);
subplot(3,1,1);
plot(f,x);
xlabel('Time');
ylabel('Amplitude');
title('Real part');
grid on;

subplot(3,1,2);
plot(f,abs(x));
xlabel('Time');
ylabel('Amplitude');
title('Magnetude part');
grid on;

subplot(3,1,3);
plot(f,angle(x));
xlabel('Time');
ylabel('Phase in radian');
title('Phase part');
grid on;