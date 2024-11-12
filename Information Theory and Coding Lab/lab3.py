# Input message
message = "000101110010100101"
dictionary = {"0": 1, "1": 2}
tmp, i = "", 3  # Starting index at 3
Sequence_output = []
Numerical_rep = []
binary_blocks = []

# LZ78 Encoding Algorithm with modified binary encoding
for x in message:
    tmp += x
    # If the current subsequence is not in the dictionary, add it
    if tmp not in dictionary:
        # Update dictionary, output, and binary blocks
        dictionary[tmp] = i

        prefix = tmp[:-1]  # N-1 sequence
        prefix_position = dictionary[prefix]
        suffix = tmp[-1]  # N-th bit
        suffix_position = dictionary[suffix]
        Numerical_rep.append(f"{prefix_position}{suffix_position}")
        # Combine binary representation of both positions
        binary_block = format(prefix_position, "03b") + suffix

        Sequence_output.append(tmp)
        binary_blocks.append(binary_block)
        tmp = ""  # Reset for the next sequence
        i += 1

# Display results
print("Subsequences:            ", Sequence_output)
print("Numerical Representation:", Numerical_rep)
print("Binary Encoded Blocks:   ", " ".join(binary_blocks))
