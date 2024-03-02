import numpy as np
import matplotlib.pyplot as plt

# Input bits
x = np.random.randint(2, size=10)

# Bits to polar
p = np.where(x == 0, -1, 1)

# Separation of even and odd sequences
even_seq = p[::2]
odd_seq = p[1::2]

# NRZ polar line coder signal generation
t = np.arange(0, len(x), 0.01)
even_ps = np.zeros(len(t))
odd_ps = np.zeros(len(t))
m = np.arange(2, len(x)+1, 2)  # Adjusted to include the last element

for j in range(len(t)):
    i = np.searchsorted(m, j+1)
    if j <= m[i-1]:  # Corrected index
        even_ps[j] = even_seq[i-1]
    else:
        even_ps[j] = even_seq[i-1]

for j in range(len(t)):
    i = np.searchsorted(m, j+1)
    if j <= m[i-1]:  # Corrected index
        odd_ps[j] = odd_seq[i-1]
    else:
        odd_ps[j] = odd_seq[i-1]

# Carrier signals generation
c1 = np.cos(2 * np.pi * 1 * t)
c2 = np.sin(2 * np.pi * 1 * t)

# QPSK Waveform generation
r1 = even_ps * c1
r2 = odd_ps * c2
qpsk_sig = r1 - r2

# Plotting
plt.figure(1)
plt.subplot(211)
plt.plot(t, even_ps, 'r')
plt.subplot(212)
plt.plot(t, odd_ps, 'r')

plt.figure(2)
plt.subplot(211)
plt.plot(t, c1, 'r')
plt.subplot(212)
plt.plot(t, c2, 'b')

plt.figure(3)
plt.subplot(311)
plt.plot(t, r1, 'r')
plt.subplot(312)
plt.plot(t, r2, 'b')
plt.subplot(313)
plt.plot(t, qpsk_sig, 'b')

plt.show()
