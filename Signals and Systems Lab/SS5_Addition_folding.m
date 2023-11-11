clc;
clear all;
close all;

figure(1);

x1 = [1 0 3 4];
n1 = -2:1;

subplot(3,1,1);
stem(n1, x1);
title('Plot of x1[n]');
xlabel('n');
ylabel('x[n]');
axis([-3,4,0,6]);
grid on;

x2 = [1 1 1 1];
n2 = 0:3;
subplot(3,1,2);
stem(n2, x2);
title('Plot of x2[n]');
xlabel('n');
ylabel('x[n]');
axis([-3,4,0,6]);
grid on;

m = min(min(n1), min(n2)): max(max(n1), max(n2));
y1 = zeros(1, length(m));
temp = 1;
for i = 1:length(m)
    if(m(i) < min(n1) || m(i) > max(n1))
        y1(i) = 0;
    else 
        y1(i) = x1(temp);
        temp = temp+1;
    end
end
y2 = zeros(1, length(m));
temp = 1;
for i = 1:length(m)
    if(m(i) < min(n2) || m(i) > max(n2))
        y2(i) = 0;
    else
        y2(i) = x2(temp);
        temp = temp+1;
    end
end
y = y1 + y2;
subplot(3,1,3);
stem(m, y);
title('Addition of Signals');
xlabel('n');
ylabel('y[n]');
axis([-3,4,0,6]);
grid on;

figure(2);
x = [3 -1 0 -4];
m = -1:2;
subplot(2,1,1);
stem(m,x);
title('Original Signal x[n]');
xlabel('n');
ylabel('x[n]');
axis([-3,3,-5,4]);
grid on;

xbar = fliplr(x);
nbar = fliplr(-m);
subplot(2,1,2);
stem(nbar,xbar);
title('Folding of Signal');
xlabel('n');
ylabel('x[-n]');
axis([-3,3,-5,4]);
grid on;