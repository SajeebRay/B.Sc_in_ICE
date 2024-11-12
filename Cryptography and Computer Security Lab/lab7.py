import string

alphabetic = string.ascii_lowercase
mp = dict(zip(alphabetic, range(26)))
mp2 = dict(zip(range(26), alphabetic))


def generateKey(message, key):
    key_word = ""
    for i in range(len(message)):
        key_word += key[i % len(key)]
    return key_word


def encrypt(message, key):
    encrypted_message = ""
    for i in range(len(message)):
        encrypted_message += mp2[(mp[message[i]] + mp[key[i]]) % 26]
    return encrypted_message


# Example usage
message = "sajeeb"
key = generateKey(message, "ice")
encrypted_message = encrypt(message, key)
print("Encrypted Message: ", encrypted_message)
