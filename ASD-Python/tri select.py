l = [13, 72, 98, 13, 87, 66, 52, 51, 36]
j = 0
while j < len(l):
    for i in range(1, len(l)-j):
        indexOfMin = i
        for j in range(1, len(l)-1):
            if l[i] > l[j] :
                indexOfMin = j
                indexOfMax = i
            l[i] = l[indexOfMin]
            l[j] = l[indexOfMax]
    j += 1
