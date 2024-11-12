import math

matrix = [[2 / 3, 1 / 3], [1 / 3, 2 / 3]]
for i in range(0, 2):
    for j in range(0, 2):
        print(f"{matrix[i][j]:.2f} ", end=" ")
    print()

# Calculate H(Y/X) using formula (1-p)log(1/(1-p))+plog(1/p)
Hp = matrix[0][0] * math.log2(1.0 / matrix[0][0]) + matrix[0][1] * math.log2(
    1.0 / matrix[0][1]
)
print(f"Conditional probability H(Y|X) = {Hp:.2f} bits/msg symbol")

# Now calculate channel capacity using formula C = 1- H(Y/X)
print(f"Channel Capacity = {(1-Hp):.2f} bits/msg symbol")
