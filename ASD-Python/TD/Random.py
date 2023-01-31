import random

def Shuffle(string):
    new_string = ""
    while(len(string) > 0):
        random_digit = random.randint(0, len(string) - 1)
        new_string += string[random_digit]
        string = string[:random_digit]+string[random_digit+1:]
    return new_string

def Shuffle_string(string):
    liste = list(string)
    random.shuffle(liste)
    return  "".join(liste)