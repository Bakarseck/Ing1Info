userInput = """Bakar SECK, je m'appelle
Elève ingénieur, je suis"""

numberOfCharacter = 0
numberOfCharacterE = 0
percentageOfCharacterE = 0.0
for i in userInput :
    if (i >= 'a' and i <= 'z') or (i >= 'A' and i <= 'Z' ):
        numberOfCharacter += 1
    if i == 'e' or i == 'E' :
        numberOfCharacterE += 1

percentageOfCharacterE = (numberOfCharacterE*100) / (numberOfCharacter)

print(f"Your text have {numberOfCharacter} alphabetics character, where {numberOfCharacterE} ({percentageOfCharacterE} %) are the character e")
