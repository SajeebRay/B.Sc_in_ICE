import numpy as np
import matplotlib.pyplot as plt

# Binary information at transmitter
binary_data_transmitter = np.array([1, 0, 1, 0, 1, 0, 1, 0, 1])
bit_duration = 0.000001

print("Binary Information at transmitter:")
print(binary_data_transmitter)

# Representation of transmitting binary information as digital signal
transmitted_signal = np.array([])
for bit in binary_data_transmitter:
    if bit == 1:
        signal_element = np.ones(100)
    else:
        signal_element = np.zeros(100)
    transmitted_signal = np.concatenate((transmitted_signal, signal_element))

time_transmitted_signal = np.arange(bit_duration / 100, 100 * len(binary_data_transmitter) * (bit_duration / 100) + bit_duration / 100, bit_duration / 100)

plt.subplot(311)
plt.plot(time_transmitted_signal, transmitted_signal, linewidth=2.5)
plt.grid(True)
plt.axis([0, bit_duration * len(binary_data_transmitter), -0.5, 1.5])
plt.ylabel("Amplitude (volt)")
plt.xlabel("Time (sec)")
plt.title("Transmitting Information as Digital Signal")

# Binary ASK Modulation
amplitude_1 = 10
amplitude_0 = 5
bit_rate = 1 / bit_duration
carrier_frequency = bit_rate * 10
time_carrier_signal = np.arange(bit_duration / 99, bit_duration + bit_duration / 99, bit_duration / 99)
samples_per_bit = len(time_carrier_signal)
modulated_signal = np.array([])

for bit in binary_data_transmitter:
    if bit == 1:
        carrier_wave = amplitude_1 * np.cos(2 * np.pi * carrier_frequency * time_carrier_signal)  # Acos(2 pi f t)
    else:
        carrier_wave = amplitude_0 * np.cos(2 * np.pi * carrier_frequency * time_carrier_signal)
    modulated_signal = np.concatenate((modulated_signal, carrier_wave))

time_modulated_signal = np.arange(bit_duration / 99, bit_duration * len(binary_data_transmitter), bit_duration / 99)

plt.subplot(312)
plt.plot(time_modulated_signal, modulated_signal)
plt.grid(True)
plt.xlabel("Time (sec)")
plt.ylabel("Amplitude (volt)")
plt.title("Waveform for Binary ASK Modulation Corresponding to Binary Information")

# Binary ASK Demodulation
received_binary_data = np.array([])

for n in range(samples_per_bit, len(modulated_signal), samples_per_bit):
    time_integration = np.arange(bit_duration / 99, bit_duration, bit_duration / 99)
    carrier_wave = np.cos(2 * np.pi * carrier_frequency * time_integration)
    
    mixed_signal = carrier_wave * modulated_signal[(n - (samples_per_bit - 1)):n]
    time_integration_trapz = np.arange(bit_duration / 99, bit_duration, bit_duration / 99)
    
    integrated_signal = np.trapz(mixed_signal, time_integration_trapz)
    integrated_signal_normalized = round((2 * integrated_signal / bit_duration))
    
    if integrated_signal_normalized > 7.5:
        received_bit = 1
    else:
        received_bit = 0
    received_binary_data = np.append(received_binary_data, received_bit)

print("Binary Information at Receiver:")
print(received_binary_data)

# Representation of Binary Data Into Digital Signal
received_signal = np.array([])
for bit in received_binary_data:
    if bit == 1:
        signal_element = np.ones(100)
    else:
        signal_element = np.zeros(100)
    received_signal = np.concatenate((received_signal, signal_element))

time_received_signal = np.arange(bit_duration / 100, 100 * len(received_binary_data) * (bit_duration / 100) + bit_duration / 100, bit_duration / 100)

plt.subplot(313)
plt.plot(time_received_signal, received_signal, linewidth=2.5)
plt.grid(True)
plt.axis([0, bit_duration * len(received_binary_data), -0.5, 1.5])
plt.ylabel("Amplitude (volt)")
plt.xlabel("Time (sec)")
plt.title("Received Information as Digital Signal")

plt.tight_layout()
plt.show()
