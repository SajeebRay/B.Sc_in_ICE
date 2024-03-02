clc
close all
clear all

N=10
n=randi([0,1],1,N)

flag=true
for i=1:N
    if n(i)==1
        if flag==true
            nn(i)=1
            flag=false
        else
            nn(i)=-1
            flag=true
        end
    else nn(i)=0
    end
end

i=1
a=0
t=0:0.01:N
for j=1:length(t)
    if t(j)>=a && t(j)<=a+0.5
        y(j)=nn(i)
    elseif t(j)>=a+0.5 && t(j)<=i
        y(j)=0
    else
        i=i+1
        a=a+1
    end
end

plot(t,y,'linewidth',2)
grid on
axis([0,N,-1.5,1.5])
title('Bipolar Retrun to Zero')
        