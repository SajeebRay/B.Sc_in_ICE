import numpy as np
import matplotlib.pyplot as plt

N = 10
# binary bit generating
n = np.random.randint(2, size=N) 
print(n);

# Signal Shaping
i=1
t = np.arange(0, N+0.01, 0.01)  # 100 Times duration set up for a single binary bit
y = np.zeros(len(t))
for j in range(len(t)):
    if t[j] <= i:  # Binary input data index Check-up Condition
        y[j] = n[i-1]  # Assign value from the mapping function
    else:
        y[j] = n[i-1]
        i += 1  # Binary input data index increment
        
# plot portion 
plt.plot(t, y, linewidth=2)

# first two of them are x-axis and last two are y-axis
plt.axis([0, N, -1.5, 1.5])  # Axis set-up
plt.grid(True)
plt.title('Unipolar NZR Signaling')
plt.show()
