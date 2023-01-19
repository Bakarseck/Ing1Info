def bubblesort(l):
    j = 0
    while j < len(l):
        for i in range(1, len(l)-j):
            if l[i-1] > l[i]:
                temp = l[i]
                l[i] = l[i-1]
                l[i-1] = temp
        j += 1
    print(l)

bubblesort([2, 6, 8, 1, 8, 10])
