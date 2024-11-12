import string


def playfair_decrypt(ciphertext, key):
    alphabet = string.ascii_lowercase.replace("j", "")
    ciphertext = ciphertext.lower().replace(" ", "")
    key = key.lower().replace(" ", "").replace("j", "i")

    key_square = ""
    for char in key + alphabet:
        if char not in key_square:
            key_square += char

    # Split ciphertext into digraphs (pairs of two characters)
    digraphs = [ciphertext[i : i + 2] for i in range(0, len(ciphertext), 2)]

    # Decrypt each digraph
    def decrypt_digraph(digraph):
        a, b = digraph
        row_a, col_a = divmod(key_square.index(a), 5)
        row_b, col_b = divmod(key_square.index(b), 5)

        if row_a == row_b:  # Same row
            col_a = (col_a - 1) % 5
            col_b = (col_b - 1) % 5
        elif col_a == col_b:  # Same column
            row_a = (row_a - 1) % 5
            row_b = (row_b - 1) % 5
        else:  # Rectangle swap
            col_a, col_b = col_b, col_a

        return key_square[row_a * 5 + col_a] + key_square[row_b * 5 + col_b]

    decrypted_message = "".join(decrypt_digraph(digraph) for digraph in digraphs)
    return decrypted_message


ciphertext = "omrmpcsgptbdml"
key = "computer"
decrypted_text = playfair_decrypt(ciphertext, key)
print("Decrypted Text:", decrypted_text)
plain = ""
for x in decrypted_text:
    if x == "x":
        continue
    plain += x
print("Refined Text:", plain)
