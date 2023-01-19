# Affichage sans retour à la ligne

print("Hello world !", end="") 

# Deux instructions dans une même ligne
print("Hello ", end="") ; print("Barham") #Hello Barham

# Affichage avec la méthode format
x = 19
nom = "Bakar"
print("{} a {} ans".format(nom, x))

# Formatage des varaiables en sortie
result = 0.478
print("Le resultat est", result)

# Formatage avec arrondi

print(f"Le result est {result:.2f}") # 0.47

print(f"Le resultat est {result:.3f}") #0.478

# Les listes

animaux = ["girafe", "tigre", "singe"]
print(animaux[0]) # girafe

# We can use indexing negative
print(animaux[-1]) # tigre

# We can concatenate two by just using operators + or *
ani1 = ["girafe", "tigre"]
ani2 = ["singe", "souris"]

print(ani1 + ani2) # ["girafe", "tigre", "singe", "souris"]

print(ani1 * 2) # ["girafe", "tigre", "girafe", "tigre"]

# We have possibilties to select a part by using the model [m:n+1]
animaux = ["girafe", "tigre", "singe", "souris"]
print(animaux[0:2]) # ["girafe", "tigre"]

#  To select all 
print(animaux[:]) # ["girafe", "tigre", "singe", "souris"]

# To select by starting on an index
print(animaux[1:]) # 

# We can use the notion of pas 
animaux = ["girafe", "tigre", "singe", "souris"]
print(animaux[0:3:2]) # animaux["start", "stop", "pas"] ["girafe", "singe"]

### Exercise in the list


# Create a list that contains all days of a week.

daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

# From this list, create a first list that contains all the days of the start week

dayOfWeekStart = daysOfTheWeek[0:5] 

# And a second list that contains the days of the week end.

daysOfWeekEnd = daysOfTheWeek[6:] # ["Saturday", "Sunday"]

# Create a list that contains numbers start 0 for 5

list = [1, 2, 3, 4, 5] 

# Reverse this list [1, 2, 3, 4, 5] in on command.

reversedList = list[5::-1]

listNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

# Build a list that contains even numbers from 1 to 20 in one command.

listOfEvenNumbers = listNumbers[1::2]

# Build a list that contains odd numbers from 1 to 20 in one command.

listOfOddNumbers = listNumbers[0::2]

# The function range()

numbers = range(2, 10, 3)

#print(list(numbers))

# Loop 

## Loop for

### iterate by using index

animaux = ["girafe", "tigre", "singe", "souris"]

for i in range(len(animaux)):
    print(f"In position {i}, we have {animaux[i]}")

# The operators of comparisons ==, !=, <, >, <=, >=

# While loop

i=0
while i <= 4:
    print(i)
    i += 1

# Print this motif 
# *
# **
# ***
# ****
# *****

i = 0
while i <= 5:
    print('*'*i)
    i+=1
i=0

for i in range(6, 0, -1):
    print("*" * i)
    i+=1

for j in range(1, 12, 3):
    print(" "*(12-i), "*" *(i))
    i+=1