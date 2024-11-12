import math
from collections import defaultdict

# given
g = defaultdict(list)
xij = [[1, 1, 2], [1, 1], [1, 2, 1], [1, 1]]


def makeGraph(li):
    for node in range(len(li)):
        for x in li[node]:
            g[node].append(x)


def entropy(li):
    H = 0
    for x in li:
        if x == 0:
            continue
        H += -(x * math.log2(x))
    return H


# make graph
makeGraph(xij)
wi = []
for node in range(len(g)):
    wi.append(sum(g[node]))

# we know
# summation(wi)=2w
w = sum(wi) / 2

# the stationary distribution is
# ui=(wi)/2w
ui = [weight / (2 * w) for weight in wi]

# H((wi)/2w)=H(ui)
H_wi_div_2w = entropy(ui)

# H(wij/2*w) = H(g[]/2*w)
wij_div_2w_list = []
for i in range(len(g)):
    wij_div_2w_list += [weight / (2 * w) for weight in g[i]]

# H(wij/2*w) = H(wij_div_2w_list)
H_wij_div_2w = entropy(wij_div_2w_list)

# finally the entropy rate
# H(x)=H(wij/2w)-H(wi/2w)
H_x = H_wij_div_2w - H_wi_div_2w
print('Entropy Rate: %.2f' % H_x)
