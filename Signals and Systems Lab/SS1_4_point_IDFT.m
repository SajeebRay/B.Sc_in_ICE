clc;
close all;
clear all;

x = [4 0 0 0];
N = 4; %for 4-point IDFT

subplot(2,1,1);
stem(0:N-1,x);
xlabel('k');
ylabel('x(k)');
title('Input Signal');
grid on;

% IDFT computation
m = zeros(1,N);
for n = 0:N-1
    for k = 0:N-1
        m(n+1) = m(n+1) + ((1/N)*x(k+1).*exp((1i*2*pi*k*n)/N));
    end
end

disp(m);

subplot(2,1,2);
stem(0:N-1, m);
xlabel('n');
ylabel('x(n)');
title('IDFT Values');
grid on;