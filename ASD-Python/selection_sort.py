l = [13, 72, 98, 13, 87, 66, 52, 51, 36]
print(f"first list :{l[:]}")
for i in range(1, len(l)):
    min = l[i]
    for j in range(i, len(l)):
            if l[i] > l[j]:
                min = l[j]
                max = l[i]
                l[i] = min
                l[j] = max
print(f"second list :{l[:]}")