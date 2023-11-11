# function to find the function value at x
def fun(x):
    return x * x - 4 * x - 10

# function to find the root of the function using bisection method
def bisection(a, b):
    # find the mid point of the interval
    c = (a + b) / 2
    # check if the mid point is the root or not
    if fun(c) == 0:
        return c
    # check if the root lies in the left or right half of the interval
    if fun(a) * fun(c) < 0:
        # search the left half of the interval
        return bisection(a, c)
    else:
        # search the right half of the interval
        return bisection(c, b)

#initial interval
a = -2
b = -1.5
# call the bisection function
root = bisection(a, b)
# print the value of root
print("The value of root is : ", round(root, 4))


'''
Output:
    The value of root is :  -1.7417
'''