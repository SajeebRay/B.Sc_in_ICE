clc
close all
clear all

N=10
n=randi([0,1],1,N)
%mapping function
for i=1:N
    if n(i)==1
        nn(i)=1
    else nn(i)=-1
    end
end

t=0:0.01:N
i=1
for j=1:length(t)
    if t(j)<=i
        y(j)=nn(i)
    else
        y(j)=nn(i)
        i=i+1
    end
end

plot(t,y,'linewidth',2)
grid on
axis([0,N,-1.5,1.5])
title('Polar Non Return to Zero')

