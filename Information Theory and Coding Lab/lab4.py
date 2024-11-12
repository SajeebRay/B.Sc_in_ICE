def isPowerOfTwo(n):
    return n & (n - 1) == 0


message = "1011"
hamming = ""
length = len(message)
print("Message: ", message)

# Calculate redundant bits
r = 0
for i in range(length):
    if 2**i == length + i + 1:
        r = i
        break

# Hamming code with parity positioned
k = 0
N = length + r + 1
for i in range(1, N):
    if isPowerOfTwo(i):
        hamming += "p"
    else:
        hamming += message[k]
        k += 1

print("Position generate parity bit :", hamming)

# Calculate parity bits
res = 0
for i in range(N - 1):
    if hamming[i] == "1":
        res ^= i + 1

# P = bin(res)[2:].zfill(r)[::-1]
P = format(res, f"0{r}b")[::-1]
# P = [010]
# Hamming code generate
k = 0
hamming_list = list(hamming)
for i in range(N - 1):
    if hamming_list[i] == "p":
        hamming_list[i] = P[k]
        k += 1

print("Hamming code:", hamming_list)
# ham_string = "".join(hamming_list)

# Error detection
rcv = "0111011"
print("Let received bit: ", rcv)
res = 0
for i in range(N - 1):
    if rcv[i] == "1":
        res ^= i + 1

if res == 0:
    print("No Error")
else:
    print("Error at position:", res)
