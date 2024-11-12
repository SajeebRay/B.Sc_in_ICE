import string

alphabet = string.ascii_uppercase
mp = dict(zip(alphabet, range(26)))
mp2 = dict(zip(range(26), alphabet))


def caesar_encrypt(message, shift):
    encrypted_message = ""
    x = " "
    for char in message:
        if char == " ":
            encrypted_message += x
            continue

        encrypted_message += mp2[(mp[char] + shift) % 26]
    return encrypted_message


def caesar_decrypt(caesar_message, shift):
    decrypted_message = ""
    x = " "
    for char in caesar_message:
        if char == " ":
            decrypted_message += x
            continue

        decrypted_message += mp2[(mp[char] - shift + 26) % 26]
    return decrypted_message


message = input("Enter Message to encrypt: ").upper()
shift = int(input("Enter Shift To Encrypt: "))
encrypted_message = caesar_encrypt(message, shift)
print("Encrypted Message:", encrypted_message)
print("Decrypted Message:", caesar_decrypt(encrypted_message, shift))
