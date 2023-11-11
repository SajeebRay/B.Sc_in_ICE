clc;
close all;
clear all;

x = [1 1 1 1];
N = 4; %for 4-point DFT

subplot(2,1,1);
stem(0:N-1, x);
xlabel('n');
ylabel('x(n)');
title('Input Signal');
grid on;

% DFT computation
y = zeros(1, N);
for k = 0:N-1
    for n = 0:N-1
        y(k+1) = y(k+1) + x(n+1)*exp((-1i*2*pi*k*n)/N);
    end
end

disp(y);

subplot(2,1,2);
stem(0:N-1, abs(y));
xlabel('k');
ylabel('x(k)');
title('DFT Values');
grid on;