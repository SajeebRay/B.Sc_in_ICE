import numpy as np
import matplotlib.pyplot as plt

N = 10  # Number of bits
# n = np.random.randint(2, size=N)  # Random bit generation
n = np.array([1, 0, 1, 1, 0, 0, 1, 1, 1, 1])
print(n)

# Binary to Manchester Conversion
nn = np.array([])
for bits in n:
    if bits == 1:
        se = [1, -1]
    else:
        se = [-1, 1]
    nn = np.concatenate((nn, se))

t = np.arange(0, N+0.01, 0.01)
y = np.zeros(len(t))
i = 0
a = 0.5
for j in range(len(t)):
    if t[j] <= a:
        y[j] = nn[i]
    else:
        y[j] = nn[i]
        i += 1
        a += 0.5

plt.plot(t, y, linewidth=2)  # Linewidth 2 for clear visualization
# plt.axis([0, N, -1.5, 1.5])  # Axis set-up
plt.grid(True)
plt.title("Manchester Coding")
plt.show()
