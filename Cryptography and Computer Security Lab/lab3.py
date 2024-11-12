import string

alphabet = string.ascii_lowercase
mp = dict(zip(alphabet, range(26)))
mp2 = dict(zip(range(26), alphabet))


def caesar_encrypt(message, shift):
    encrypted_message = ""
    for char in message:
        encrypted_message += mp2[(mp[char] + shift) % 26]
    return encrypted_message


def bruteforce_decrypt(encrypted_message):
    decrypted_message = []
    for i in range(26):
        decryp = ""
        for j in range(len(encrypted_message)):
            decryp += mp2[(mp[encrypted_message[j]] - i + 26) % 26]
        decrypted_message.append(decryp)
    return decrypted_message


message = "hello"
shift = 3
encrypted_message = caesar_encrypt(message, shift)
decrypted = bruteforce_decrypt(encrypted_message)

print("Encrypted Message:", encrypted_message)
print(
    "Decrypted Messages",
)
ind = 0
for msg in decrypted:
    print(f"For key {ind}: ", msg)
    ind += 1
