clc;
clear all;
close all;
t = -10:1:10;
unitstep = (t >= 0);
unitsample = (t == 0);
unitramp = (t.*unitstep);

subplot(3,1,1);
stem(t,unitstep);
xlabel('Time');
ylabel('Amplitude');
title('Unit step Discrete time');
grid on;

subplot(3,1,2);
stem(t,unitsample);
xlabel('Time');
ylabel('Amplitude');
title('Unit Sample Discrete time');
grid on;

subplot(3,1,3);
stem(t,unitramp);
xlabel('Time');
ylabel('Amplitude');
title('Unit ramp Discrete time');
grid on;