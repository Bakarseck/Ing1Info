userInput = input("Give a word \n")

if userInput == userInput[::-1]:
    print("C'est un palindrome")
else:
    print("C'est pas un palindrome")
    