clc;
clear all;
close all;
% Define the sequence x(n)
n = -5:5;
x = 2*[(n+2)==0] - [(n-4)==0];

% Plot the sequence
stem(n, x);
title('Plot of x(n) = 2*del(n+2)-del(n-4)');
xlabel('n');
ylabel('x(n)');
axis([-6 6 -3 3]);
grid on;
