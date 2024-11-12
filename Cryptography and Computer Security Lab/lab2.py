normal_character = "abcdefghijklmnopqrstuvwxyz".upper()
encoded_character = "qwertyuiopasdfghjklzxcvbnm".upper()

mp = dict(zip(normal_character, encoded_character))
mp2 = dict(zip(encoded_character, normal_character))


def mono_alphabetic_encrypt(message):
    encrypted_message = ""
    for char in message:
        encrypted_message += mp[char]
    return encrypted_message


def mono_alphabetic_decrypt(encrypted_message):
    decrypted_message = ""
    for char in encrypted_message:
        decrypted_message += mp2[char]
    return decrypted_message


message = input("Enter message: ").upper()
encrypted_message = mono_alphabetic_encrypt(message)
decrypted_message = mono_alphabetic_decrypt(encrypted_message)
print("Encrypted message: ", encrypted_message)
print("Decrypted message: ", decrypted_message)
