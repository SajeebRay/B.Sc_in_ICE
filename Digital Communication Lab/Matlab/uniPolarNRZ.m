clc
clear all
close all

N=10
n=randi([0,1],1,N)

i=1
t=0:0.01:length(n)
for j=1:length(t)
    if t(j)<=i
        y(j)=n(i)
    else
        y(j)=n(i)
        i=i+1
    end
end

plot(t,y,'linewidth',2)
grid on
axis([0,N,-1.5,1])
title('Unipolar Non Return to Zero')
      
    



