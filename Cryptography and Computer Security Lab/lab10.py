import string

alphabet = string.ascii_lowercase
mp = dict(zip(alphabet, range(26)))
mp2 = dict(zip(range(26), alphabet))


def decrypt(encrypted_code, key):
    decrypted_message = ""
    for i in range(len(encrypted_code)):
        xor = encrypted_code[i] ^ mp[key[i]]
        decrypted_message += mp2[xor % 26]
    return decrypted_message


# Example encrypted code and key
encrypted_code = [28, 14, 7]
key = "son"  # The key used for encryption

decrypted_message = decrypt(encrypted_code, key)
print("Encrypted Code: ", encrypted_code)
print("Key: ", key)
print("Decrypted Message: ", decrypted_message)
