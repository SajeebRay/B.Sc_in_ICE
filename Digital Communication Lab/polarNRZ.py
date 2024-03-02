import numpy as np
import matplotlib.pyplot as plt

N=10
# bit generating
n=np.random.randint(2,size=N)
print(n)

# mapping function 
nn=np.where(n==1,1,-1)

# signal shaping
i=1
t=np.arange(0,N+0.01,0.01)
y=np.zeros(len(t))
for j in range(len(t)):
    if t[j]<=i:
        y[j]=nn[i-1]
    else:
        y[j]=nn[i-1]
        i+=1

plt.plot(t,y,linewidth="2")
plt.grid(True)
plt.axis([0,N,-1.5,1.5])
plt.title("Polar Non Return to Zero")
plt.show()