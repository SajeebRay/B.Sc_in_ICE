import random
import string

alphabet = string.ascii_lowercase
mp = dict(zip(alphabet, range(26)))
mp2 = dict(zip(range(26), alphabet))


def encrypt(message, key):
    encrypted_message = ""
    encrypted_code = []
    for i in range(len(message)):
        xor = mp[message[i]] ^ mp[key[i]]
        encrypted_code.append(xor)
        encrypted_message += mp2[xor % 26]
    return encrypted_message, encrypted_code


message = "oak"
# key = "inf".lower() #random key needed
key = "son"
# for i in range(len(message)):
#     key += chr(random.randint(65, 90))
# print("Genereated Key: ", key)
# key = key.lower()

encrypted_message, encrypted_code = encrypt(message, key)
print("Encrypted Message: ", encrypted_message)
print("Encrypted Code: ", encrypted_code)
