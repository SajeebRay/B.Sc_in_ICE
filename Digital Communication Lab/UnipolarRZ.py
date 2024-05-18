# library
import numpy as np
import matplotlib.pyplot as plot


N = 10
# binary bit
# n=np.random.randint(2,size=N);
n = np.array([1, 0, 1, 1, 0, 1, 1, 1, 1, 1])
print(n)

# signal Shaping
t = np.arange(0, N + 0.01, 0.01)
y = np.zeros(len(t))

a = 0
i = 0
for j in range(len(t)):
    if t[j] >= a and t[j] <= a+0.5:
        y[j] = n[i]
    elif t[j] >= a+0.5 and t[j] <= a+1:
        pass
    else:
        a += 1
        i += 1

plot.plot(t, y, linewidth="2")
plot.grid(True)
plot.axis([0, N, -1.5, 1.5])
plot.title("Unipolar Return to Zero")
plot.show()
