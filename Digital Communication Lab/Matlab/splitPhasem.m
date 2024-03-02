clc
clear all
close all

N=10
n=randi([0,1],1,N)
nnn=[]
for i=1:N
    if n(i)==1
        nn=[1 -1]
    else
        nn=[-1 1]
    end
    nnn=[nnn nn]
end

i=1
a=0.5
t=0:0.01:N
for j=1:length(t)
    if t(j)<=a
        y(j)=nnn(i)
    else
        y(j)=nnn(i)
        i=i+1
        a=a+0.5
    end
end

plot(t,y,'linewidth',2)
grid on
axis([0,N,-1.5,1.5])
title('Split Phase')
        
        