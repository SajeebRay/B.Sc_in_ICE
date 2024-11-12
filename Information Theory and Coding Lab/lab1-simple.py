import huffman
from collections import Counter


# Calculate frequencies and probabilities
def calculate_probabilities(message):
    message = message.upper().replace(" ", "")
    freq = Counter(message)
    P = [fre / len(message) for fre in freq.values()]
    return P, freq


# Input message
message = "aaabbbbbccccccddddee"
P, freq = calculate_probabilities(message)
print("Probabilities:", P)

# Generate Huffman codes using huffman library
huffman_code = huffman.codebook(freq.items())

# Display Huffman codes
print("Huffman Codes:")
for char, code in huffman_code.items():
    print(f"{char} -> {code}")
