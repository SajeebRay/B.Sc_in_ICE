n = 4
x = [5, 6, 9, 11]
y = [12, 13, 14, 16]
value = 10
yp = 0
for i in range(n):
    pro = 1
    for j in range(n):
        if i != j:
            pro *= (value - x[j]) / (x[i] - x[j])
    yp += pro * y[i]
    
print("Value of f(10) is:", round(yp, 4))

'''
Output: 
    Value of f(10) is: 14.6667
    
'''