import math
from collections import Counter
import huffman

# Input message
message = "aaabbbbbccccccddddee"
freq = dict(Counter(message))
length = len(message)

# Generate Huffman codes
huffman_code = huffman.codebook(freq.items())

huffman_avg_length = 0
for char, code in huffman_code.items():
    huffman_avg_length += len(code) * (freq[char] / length)

# Calculate entropy
H = -sum((count / length) * math.log2(count / length) for count in freq.values())

# Display results
print("Huffman Code:", huffman_code)
print(f"Average Huffman Code Length: {huffman_avg_length:.2f} bits")
print(f"Entropy: {H:.2f} bits")
print("Huffman code is optimal" if huffman_avg_length >= H else "Code is not optimal")
