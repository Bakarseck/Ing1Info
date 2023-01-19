#include<stdio.h>

int JeSuisUnSigneDePonctuaction(char c) {
    if (c == '.' || c == ',' || c == '!' || c == ';')
    {
        return 1;
    } else {
        return 0;
    }
}

int JeSuisUnChiffre(char c) {
    if (c >= 48 && c <= 57) {
        return 1;
    } else {
        return 0;
    }
}

int main() {
    char *phrase = "Je m'appelle Bakar.SECk 12367";
    int i = 0;
    int nbrDeSigne=0, nbrDeChiffre=0;
    while ( phrase[i] != '\0')
    {
        if (JeSuisUnChiffre(phrase[i]))
        {
            nbrDeChiffre += 1;
        }

        if (JeSuisUnSigneDePonctuaction(phrase[i]))
        {
            nbrDeSigne += 1;
        }

        i++;
    }

    printf("%d %d", nbrDeChiffre, nbrDeSigne);
    
}