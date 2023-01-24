def SortByInsert(l):
    j = 0
    while j < len(l):
        for i in range(1, len(l)):
            if l[i-1] > l[i]:
                temp = l[i-1]
                l[i-1] = l[i]
                l[i] = temp
                j = 0
            else:
                j += 1
    print(l)

# Create a new list by using  list comprehension
l = [i for i in range(1, 10)]
# Reversed The new list
revl = l[::-1]

SortByInsert(revl)