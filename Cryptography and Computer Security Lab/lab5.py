import string


def playfair_encrypt(message, key):
    alphabet = string.ascii_lowercase.replace("j", "")
    message = message.lower().replace(" ", "").replace("j", "i")
    key = key.lower().replace(" ", "").replace("j", "i")

    # Generate key square
    key_square = ""
    for char in key + alphabet:
        if char not in key_square:
            key_square += char

    # Prepare message by handling double letters and padding with 'x' if needed
    prepared_message = ""
    i = 0
    while i < len(message) - 1:
        if message[i] == message[i + 1]:  # Insert 'x' between duplicate letters
            prepared_message += message[i] + "x"
            i += 1
        else:
            prepared_message += message[i] + message[i + 1]
            i += 2
    if i < len(message):
        prepared_message += message[i]
    if len(prepared_message) % 2 == 1:
        prepared_message += "x"  # Pad with 'x' if message length is odd

    # Split message into digraphs (pairs of two characters)
    digraphs = [prepared_message[i : i + 2] for i in range(0, len(prepared_message), 2)]

    # Encrypt each digraph
    def encrypt_digraph(digraph):
        a, b = digraph
        row_a, col_a = divmod(key_square.index(a), 5)
        row_b, col_b = divmod(key_square.index(b), 5)

        if row_a == row_b:  # Same row
            col_a = (col_a + 1) % 5
            col_b = (col_b + 1) % 5
        elif col_a == col_b:  # Same column
            row_a = (row_a + 1) % 5
            row_b = (row_b + 1) % 5
        else:  # Rectangle swap
            col_a, col_b = col_b, col_a

        return key_square[row_a * 5 + col_a] + key_square[row_b * 5 + col_b]

    # Generate encrypted message
    encrypted_message = "".join(encrypt_digraph(digraph) for digraph in digraphs)
    return encrypted_message


# Example usage
message = "communication"
key = "computer"
ciphertext = playfair_encrypt(message, key)
print("Cipher Text:", ciphertext)
