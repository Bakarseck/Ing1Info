def giveMetheIndex(character, firstList):
    for i in range(len(firstList)):
        if character == firstList[i]:
            return i
        
def giveMeTheEquivalent(index, firstList, secondList):
    for i in range(len(firstList)):
        if index == i :
            return secondList[i]