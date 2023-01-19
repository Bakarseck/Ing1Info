def MergeSort(l):
    if len(l) > 1:
        # Divide the list in two lists
        middle = len(l)//2
        leftArray = l[:middle]
        rightArray = l[middle:]

        # Call recursif of the functions
        MergeSort(leftArray)
        MergeSort(rightArray)

        i = 0 # The count of leftArray
        j = 0 # The count of rightArray
        k = 0 # The count of the initial list

        while i < len(leftArray) and j < len(rightArray):
            if leftArray[i] < rightArray[j]:
                l[k] = leftArray[i]
                i += 1
            else:
                l[k] = rightArray[j]
                j += 1
            k += 1

        while i < len(leftArray):
            l[k] = leftArray[i]
            i += 1
            k += 1

        while j < len(rightArray):
            l[k] = rightArray[j]
            j += 1
            k += 1

        print(l)

l = [x for x in range(10, 1, -1)]
MergeSort(l)