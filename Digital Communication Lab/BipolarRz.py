import numpy as np
import matplotlib.pyplot as plt

N=10
# bit generating
n=np.random.randint(2,size=N)
print(n)

# making data based on bipolar algo
nn=np.zeros(N);
flag=True
for i in range(N):
    if n[i]==1:
        if flag:
            nn[i]=1
        else:
            nn[i]=-1
        flag^=True

# signal shaping 
i=1
a=0
t=np.arange(0,N+0.01,0.01)
y=np.zeros(len(t))
for j in range(len(t)):
    if t[j]>=a and t[j]<=a+0.5:
        y[j]=nn[i-1]
    elif t[j]>=a+0.5 and t[j]<=i:
        pass
    else:
        a+=1
        i+=1

plt.plot(t,y,linewidth="2")
plt.grid(True)
plt.axis([0,N,-1.5,1.5])
plt.title("Bipolar Return to Zero")
plt.show()