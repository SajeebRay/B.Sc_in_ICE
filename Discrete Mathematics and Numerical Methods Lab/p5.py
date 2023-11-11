import numpy as np

mat1 = [[1, 0, 1],
           [1, 0, 0],
           [0, 1, 0]]
mat2 = [[1, 0, 1],
           [0, 1, 1],
           [1, 0, 0]]

inter = []
for i in range(len(mat1)):
    row = []
    for j in range(len(mat1[0])):
        row.append(mat1[i][j] and mat2[i][j])
    inter.append(row) 
mis = np.array(inter).reshape(3, 3)
    
uni = []
for i in range(len(mat1)):
    row = []
    for j in range(len(mat1[i])):
        row.append(mat1[i][j] or mat2[i][j])
    uni.append(row)  
mus = np.array(uni).reshape(3, 3)

# For displaying ...
rm1 = np.array(mat1).reshape(3, 3)
rm2 = np.array(mat2).reshape(3, 3)
print("Matrix A = \n", rm1)
print("Matrix B = \n", rm2)        
print("Matrix intersection = \n", mis)
print("Matrix Union = \n", mus)



'''
Output:
    Matrix A = 
    [[1 0 1]
    [1 0 0]
    [0 1 0]]
    Matrix B =
    [[1 0 1]
    [0 1 1]
    [1 0 0]]
    Matrix intersection =
    [[1 0 1]
    [0 0 0]
    [0 0 0]]
    Matrix Union =
    [[1 0 1]
    [1 1 1]
    [1 1 0]]
'''