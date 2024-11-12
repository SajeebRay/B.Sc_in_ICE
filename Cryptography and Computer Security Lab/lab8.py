import string

alphabetic = string.ascii_lowercase
mp = dict(zip(alphabetic, range(26)))
mp2 = dict(zip(range(26), alphabetic))


def generateKey(message, key):
    key_word = ""
    for i in range(len(message)):
        key_word += key[i % len(key)]
    return key_word


def decrypt(encrypted_message, key):
    decrypted_message = ""
    for i in range(len(encrypted_message)):
        decrypted_message += mp2[(mp[encrypted_message[i]] - mp[key[i]] + 26) % 26]
    return decrypted_message


# Example usage
encrypted_message = "acnmgf"
key = generateKey(encrypted_message, "ice")
decrypted_message = decrypt(encrypted_message, key)
print("Decrypted Message:", decrypted_message)
