import numpy as np
import matplotlib.pyplot as plt

# Parameters
fc = 20
fm = 2
fs = 1000
t = 1
n = np.arange(0, t, 1/fs)

# Square wave generation
duty = 20
s = np.zeros(len(n))
for i in range(len(n)):
    if np.floor(2 * fc * n[i]) % 2 == 0:
        s[i] = 1

# Generating sine wave
m = np.sin(2 * np.pi * fm * n)

# PAM waveform generation
period_samp = len(n) / fc
ind = np.arange(0, len(n), int(period_samp))
on_samp = int(np.ceil(period_samp * duty / 100))
pam = np.zeros(len(n))
for i in ind:
    pam[i:i+on_samp] = m[i]

# Plotting
plt.figure(figsize=(8, 6))
plt.subplot(3, 1, 1)
plt.plot(n, s)
plt.title('Square Wave')
plt.ylim(-0.2, 1.2)

plt.subplot(3, 1, 2)
plt.plot(n, m)
plt.title('Sine Wave')
plt.ylim(-1.2, 1.2)

plt.subplot(3, 1, 3)
plt.plot(n, pam)
plt.title('PAM Waveform')
plt.ylim(-1.2, 1.2)

plt.tight_layout()
plt.show()
