def fun(x):
    return x * x - x - 2

def falsi(a, b):
    c = (a * fun(b) - b * fun(a)) / (fun(b) - fun(a))
    # check if the function at both end points have same sign
    if fun(a) * fun(b) > 0:
        print("Invalid interval")
        return
    # check if the root is found or not
    if fun(c) == 0:
        print("The Value of Root is:", round(c,4))
    elif fun(a) * fun(c) < 0:
        # search the left half of the interval
        falsi(a, c)
    else:
        # search the right half of the interval
        falsi(c, b)

# a = int(input("Enter first value: "))
# b = int(input("Enter second value: "))

a = 1
b = 3
falsi(a, b)


'''
Output:
    The Value of Root is: 2.0

'''