clc;
clear all;
close all;

% Define the system impulse response h(n)
w = 0:0.001:1;
H = exp(1j*w*pi)./(exp(1j*w*pi)-0.9*ones(1,1001));
subplot(2,1,1);
plot(w,abs(H));
grid on;
title('Magnetude Response');
xlabel('Frequency in pi Units');
ylabel('Magnitude |H|');
subplot(2,1,2);
plot(w, angle(H)/pi);
grid on;
title('Phase response');
xlabel('Frequency in pi units');
ylabel('Phase in pi radians');