clc;
close all;
clear all;

x = input('Enter the sequence x(n) = ');
N = input('Input N:');
len = length(x);
disp(N);

subplot(3,1,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Signal');
grid on;

% Zero-padding
if N > len
    x = [x, zeros(1, N-len)];
end

% DFT computation
y = zeros(1, N);
for k = 0:N-1
    for n = 0:N-1
        y(k+1) = y(k+1) + x(n+1)*exp((-1i*2*pi*k*n)/N);
    end
end

disp(y);

subplot(3,1,2);
stem(0:N-1, abs(y));
xlabel('k');
ylabel('x(k)');
title('DFT Values');
grid on;

% IDFT computation
M = length(y);
m = zeros(1,M);
for n = 0:M-1
    for k = 0:M-1
        m(n+1) = m(n+1) + ((1/M)*y(k+1).*exp((1i*2*pi*k*n)/M));
    end
end

disp(m);

subplot(3,1,3);
stem(0:M-1, m);
xlabel('n');
ylabel('y(n)');
title('IDFT Values');
grid on;