# Les fonctions
from math import sqrt

# definir une fonction carré cube
def carre_cube(x):
    return x**2, x**3

print(carre_cube(2))

# Mélange d'arguments positionnels et par mots-clés

def fct(a, b, x=0, y=0, z=0):
    return a, b, x, y, z

print(fct(1, 1, z=5))

# Write a function that calculates the factorial without using the recursivity
# Calculate factorial of 1000 by using this function

def factoIterative(n):
    f = 1
    if n == 0 or n == 1:
        return 1
    else:
        for i in range(2, n+1, 1):
            f = f*i
        return f

def factoRecursive(n):
    f = 1
    if n == 0 or n == 1:
        return 1
    else:
        return n*factoRecursive(n-1)

# Verify is a number is Prime or not
def isPrime(n):
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

# Find all Prime between 2 and 100
def findAllPrime():
    listOfAllPrimes = [2]
    for i in range(3, 101):
        if isPrime(i):
            listOfAllPrimes.append(i)
    return listOfAllPrimes

b = "matam"

firstParty = b[0:int(len(b)/2)]
secondParty = b[-1:int(len(b)/2):-1]

print(firstParty == secondParty)

print(b[0:int(len(b)/2)] == b[-1:int(len(b)/2):-1])


# Palindrom
b[::-1] == b

# The dictionnary

# The list Comprehension

# Class
class Citron:
    couleur = "jaune"

    def recup_saveur(self):
        return "acide"

if __name__ == "__main__":
    citron1 = Citron()
    print(citron1.couleur)
    citron2 = Citron()
    print(citron2.couleur)
    saveur_citron1 = citron1.recup_saveur()
    print(saveur_citron1)

class Citron:
    def __init__(self, masse, couleur="jaune"):
        self.couleur = couleur
        self.masse = masse
        self.affiche_message()

    def affiche_message(self):
        print("Le citron est trop bon !!!")

    def get_Couleur(self):
        return self.couleur

if __name__ == "__main__":
    citron1 = Citron()

# define a class Atom that have three attribute x, y and z and a method calcul_distance who calculates the distance between two Atoms.

class Atome:
    def __init__(self, x, y, z):
        self.x = x
        self.y = y
        self.z = z

    def calcul_distance(self, atome):
        return sqrt((self.x - atome.x)**2 + (self.y - atome.y)**2 + (self.z - atome.z)**2)