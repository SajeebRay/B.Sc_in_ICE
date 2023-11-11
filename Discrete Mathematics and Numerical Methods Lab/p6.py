def u_cal(u,n):
    temp = u
    for i in range(1,n):
        temp = temp*(u-i)
    return temp
def fact(n):
    f = 1
    for i in range(2,n+1):
        f = f*i
    return f
n = 6
x = [1911,1921,1931,1941,1951,1961]
y = [[None]*n for j in range(len(x))]
y[0][0] = 12
y[1][0] = 15
y[2][0] = 20
y[3][0] = 27
y[4][0] = 39
y[5][0] = 52

for i in range(1,n):
    for j in range(n-i):
        y[j][i] = y[j+1][i-1] - y[j][i-1]
        
for i in range(0,n):
    print(x[i],end='\t')
    for j in range(n-i):
        print(y[i][j],end='\t')
    print('')

value = 1946
first = (value - x[0])
diff = (x[1] - x[0])
u = first / diff

sum = y[0][0]
for i in range(1,n):
    sum = sum + (u_cal(u,i)*y[0][i]) / fact(i)
print('Population in the year of 1946:', sum)

'''
Output: 
1911    12      3       2       0       3       -10
1921    15      5       2       3       -7
1931    20      7       5       -4
1941    27      12      1
1951    39      13
1961    52
Population in the year of 1946: 32.34375

'''