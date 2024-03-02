clc
clear all
close all

N=10
n=randi([0,1],1,N)

i=1;
a=0
t=0:0.01:N
for j=1:length(t)
    if t(j)>=a && t(j)<=a+0.5
        y(j)=n(i)
    elseif t(j)>a+0.5 && t(j)<=i
        y(j)=0;
    else
        i=i+1
        a=a+1
    end
end

plot(t,y,'linewidth',2)
axis([0,N,-1.5,1.5])
grid on
title('Unipolar Return to Zero')
