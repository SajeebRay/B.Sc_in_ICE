# library 
import numpy as np
import matplotlib.pyplot as plot


N=10
# binary bit
n=np.random.randint(2,size=N);
print(n)

# signal Shaping
i=1
a=0
t=np.arange(0,N+0.01,0.01)
y=np.zeros(len(t))

for j in range(len(t)):
    if t[j]>=a and t[j]<=a+0.5:
        y[j]=n[i-1]
    elif t[j]>=a+0.5 and t[j]<=i:
        pass
    else:
        a+=1
        i+=1

plot.plot(t,y,linewidth="2")
plot.grid(True)
plot.axis([0,N,-1.5,1.5])
plot.title("Unipolar Return to Zero")
plot.show()
