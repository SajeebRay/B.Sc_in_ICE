import numpy as np


def encode(msg, K, n, generators):
    g, v = [], []
    for i in range(n):
        sub_g = generators[i]
        g.append(sub_g)

    for i in range(n):
        res = list(np.poly1d(g[i]) * np.poly1d(msg))
        v.append(res)

    listMax = max(len(l) for l in v)
    for i in range(n):
        if len(v[i]) != listMax:
            tmp = [0] * (listMax - len(v[i]))
            v[i] = tmp + v[i]

    res = []
    for i in range(listMax):
        res += [v[j][i] % 2 for j in range(n)]
    return res


# Example values
message = [1, 0, 1, 0, 1]  # Message to encode
K = 4  # Constraint length
n = 2  # Number of generators
generators = [
    [1, 1, 1, 1],  # Generator polynomial g0
    [1, 1, 0, 1],  # Generator polynomial g1
]

# Encoding the message
encoded_message = encode(message, K, n, generators)
print("Encoded Message:")
for x in encoded_message:
    print(x, end=" ")
