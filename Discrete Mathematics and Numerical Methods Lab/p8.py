# function to calculate product term
def product_term(n, value, x):
    pro = 1
    for j in range(n):
        pro = pro * (value - x[j])
    return pro

n = 6
# input values of x
x = [4,5,7,10,11,13]
y = [[None]*n for j in range(len(x))]

# input values of y
y[0][0] = 48
y[1][0] = 100
y[2][0] = 294
y[3][0] = 900
y[4][0] = 1210
y[5][0] = 2028

for i in range(1, n):
    for j in range(n - i):
        y[j][i] = ((y[j+1][i-1] - y[j][i-1])/(x[i+j] - x[j]))

for i in range(n):
    print(x[i], end='\t')
    for j in range(n-i):
        print(round(y[i][j], 4), '\t', end=' ')
    print('')
value = 15
sum = y[0][0]
for i in range(1, n):
    sum = sum + product_term(i, value, x) * y[0][i]
print("The value is :",sum)

'''
Output:
    4       48       52.0    15.0    1.0     0.0     0.0     
    5       100      97.0    21.0    1.0     0.0     
    7       294      202.0   27.0    1.0     
    10      900      310.0   33.0    
    11      1210     409.0   
    13      2028     
    The value is : 3150.0
'''