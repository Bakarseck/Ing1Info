def BubbleSort(l):
    j = 0
    while j < len(l):
        for i in range(1, len(l)-j):
            if l[i-1] > l[i]:
                temp = l[i-1]
                l[i-1] = l[i]
                l[i] = temp
        j += 1
    
    print(l)

l = [10, 9, 8, 7, 6, 5, 4]

BubbleSort(l)
