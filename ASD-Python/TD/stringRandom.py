from Random import *
from crypto import *
import string

def Crypto():
    listOfAlphabet = string.ascii_letters

    alphabetRandom = Shuffle(listOfAlphabet)

    print(alphabetRandom)

    userInput = input("Give me a sentences \n")

    result = ""

    for i in userInput:
        if (i >= 'a' and i <= 'z') or (i >= 'A' and i <= 'Z'):
            index = giveMetheIndex(i, listOfAlphabet)
            equivalent = giveMeTheEquivalent(index, listOfAlphabet, alphabetRandom)
            result += str(equivalent)
    
    print(f"Le cryptage de {userInput} est {result} \n")

    print("================Decrptage=============== \n")

    decryptResult = ""

    for i in result:
        if (i >= 'a' and i <= 'z') or (i >= 'A' and i <= 'Z'):
            index = giveMetheIndex(i, alphabetRandom)
            equivalent = giveMeTheEquivalent(index, alphabetRandom, listOfAlphabet)
            decryptResult += str(equivalent)

    print(f"Le decrptage est {decryptResult}")

Crypto()


