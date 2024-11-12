from sympy import Matrix


def get_key_matrix(key):
    return Matrix(3, 3, [ord(char) % 65 for char in key])


def hill_encrypt(message, key):
    message_vector = Matrix([ord(char) % 65 for char in message])
    cipher_vector = (key * message_vector) % 26
    ciphertext = "".join(chr(int(num) + 65) for num in cipher_vector)
    return ciphertext


def hill_decrypt(ciphertext, key):
    key_inv = key.inv_mod(26)  # Get modular inverse of the key matrix
    cipher_vector = Matrix([ord(char) % 65 for char in ciphertext])
    message_vector = (key_inv * cipher_vector) % 26
    decrypted_message = "".join(chr(int(num) + 65) for num in message_vector)
    return decrypted_message


# Example usage
message = "SAJ"
key = "ABCDEGFGH"
key_matrix = get_key_matrix(key)

ciphertext = hill_encrypt(message, key_matrix)
print("Ciphertext:", ciphertext)

decrypted_message = hill_decrypt(ciphertext, key_matrix)
print("Decrypted Message:", decrypted_message)
