G = {'a':'bcd', 'b':'ac', 'c':'abdef',
         'd': 'ace', 'e':'def','f':'ce'}

colored = {}
for i in G:
    booked = set()
    for j in G[i]:
            c = colored.get(j)
            booked.add(c)
    for j in range(len(G)):
        if j not in booked:
            colored[i] = j
            break
        
print(colored)

'''
Output:
    {'a': 0, 'b': 1, 'c': 2, 'd': 1, 'e': 0, 'f': 1}
    
'''