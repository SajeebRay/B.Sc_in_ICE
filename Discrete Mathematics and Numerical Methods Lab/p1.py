from itertools import product 

#input
n = int(input("Enter number of element: "))
A = []
print('Enter elements: ')
for i in range(n):
  x = int(input())
  A.append(x)

#A = [1, 2, 3, 4]
ur = [(i,j) for i,j in product(A,repeat = 2)]
R1 = [(i,j) for i,j in product(A,repeat=2) if j%i == 0]
R2 = [(i,j) for i,j in product(A,repeat=2) if i<=j]

#output
print("\nElements of A:", A)
print("Total pairs in Universal relation R =", len(ur))
print("Universal relation of R =" , ur)
print("Total pairs in Relation R1 =", len(R1))
print("Relation R1 =", R1)
print("Total pairs in Relation R2 =", len(R2))
print('Relation R2 =', R2)



'''

Output:
Elements of A: [1, 2, 3, 4]
Total pairs in Universal relation R = 16
Universal relation of R = [(1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4), (3, 1), (3, 2), (3, 3), (3, 4), (4, 1), (4, 2), (4, 3), (4, 4)]
Total pairs in Relation R1 = 8
Relation R1 = [(1, 1), (1, 2), (1, 3), (1, 4), (2, 2), (2, 4), (3, 3), (4, 4)]
Total pairs in Relation R2 = 10
Relation R2 = [(1, 1), (1, 2), (1, 3), (1, 4), (2, 2), (2, 3), (2, 4), (3, 3), (3, 4), (4, 4)]

'''