import numpy as np

A = []
B = []
n = int(input("Enter size of A: "))
print("Enter elemets of A: ")
for i in range(n):
    x = int(input())
    A.append(x)
n = int(input("Enter size of B: "))
print("Enter elements of B: ")
for j in range(n):
    x = int(input())
    B.append(x)
    
# A = [1, 2, 3]
# B = [1, 2]
output = []
output2 = []
for i in A:
    for j in B:
        if i > j:
            output.append((i, j))
            output2.append(1)
        else:
            output2.append(0)
            
rm = np.array(output2).reshape(len(A), len(B))
        
#output    
print('All elements in set A =', A)
print('All elements in set B =', B)
print('Total order pair =', len(output))
print('R =', output)
print('Relation Matrix = \n', rm)



'''
Output:
All elements in set A = [1, 2, 3]
All elements in set B = [1, 2]
Total order pair = 3
R = [(2, 1), (3, 1), (3, 2)]
Relation Matrix =
 [[0 0]
 [1 0]
 [1 1]]
 
'''