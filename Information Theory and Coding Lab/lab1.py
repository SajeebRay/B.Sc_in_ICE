import heapq
from collections import Counter


def Probabilities(message):
    message = message.upper().replace(" ", "")
    freq = Counter(message)
    P = [fre / len(message) for fre in freq.values()]
    return P, freq


def build_heap(freq):
    heap = [[fre / len(message), [char, ""]] for char, fre in freq.items()]
    heapq.heapify(heap)
    return heap


def build_tree(heap):
    while len(heap) > 1:
        left = heapq.heappop(heap)
        right = heapq.heappop(heap)
        for pair in left[1:]:
            pair[1] = "0" + pair[1]
        for pair in right[1:]:
            pair[1] = "1" + pair[1]
        heapq.heappush(heap, [left[0] + right[0]] + left[1:] + right[1:])
    return heap[0]


message = "aaabbbbbccccccddddee"
P, freq = Probabilities(message)
print("Probabilities: ", P)
heap = build_heap(freq)
tree = build_tree(heap)
print("Tree:", tree)
for pair in tree[1:]:
    print(pair[0], "->", pair[1])
