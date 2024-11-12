# given
import math

matrix = [
    [1 / 8, 1 / 16, 1 / 32, 1 / 32],
    [1 / 16, 1 / 8, 1 / 32, 1 / 32],
    [1 / 16, 1 / 16, 1 / 16, 1 / 16],
    [1 / 4, 0, 0, 0],
]

# the marginal distribution of x
marginal_x = []
for i in range(len(matrix[0])):
    marginal_x.append(sum(matrix[j][i] for j in range(len(matrix))))

# the marginal distribution of y
marginal_y = []
for i in range(len(matrix)):
    marginal_y.append(sum(matrix[i][j] for j in range(len(matrix[0]))))


# H(x)
def entropy(marginal_var):
    H = 0
    for x in marginal_var:
        if x == 0:
            continue
        H += -(x * math.log2(x))
    return H


print(marginal_x)
print(marginal_y)
H_x = entropy(marginal_x)
H_y = entropy(marginal_y)

# conditional entropy
# H(x/y)
H_xy = 0
for i in range(len(matrix)):
    tmp = [(1 / marginal_y[i]) * matrix[i][j] for j in range(len(matrix[0]))]
    H_xy += entropy(tmp) * marginal_y[i]

# H(y/x)
H_yx = 0
for i in range(len(matrix[0])):
    tmp = [(1 / marginal_x[i]) * matrix[j][i] for j in range(len(matrix))]
    H_yx += entropy(tmp) * marginal_x[i]

print("Conditional Entropy H(x|y): ", H_xy)
print("Conditional Entropy H(y|x): ", H_yx)

# Joint entropy
# H(x,y)
H_of_xy = H_x + H_yx
print("Joint Entropy H(x,y): ", H_of_xy)

# Mutual Information
# I(x,y)
I_of_xy = H_y - H_yx
print("Mutual Information: ", I_of_xy)
