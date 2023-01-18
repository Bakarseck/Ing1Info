def SortBySelect(l):
    for i in range(len(l)):
        indexOfTheMin = i
        for j in range(i+1, len(l)):
            if l[indexOfTheMin] > l[j]:
                indexOfTheMin = j
        temp = l[i]
        l[i] = l[indexOfTheMin]
        l[indexOfTheMin] = temp
    print(l)

l = [10, 9, 8, 7, 6, 5, 4]

SortBySelect(l)
