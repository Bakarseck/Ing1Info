#include <stdio.h>
#include <stdlib.h>
#include<time.h>

int isPlus(int n, int randN) {
    if (n < randN) 
    {
        return 1 ;
    } else 
    {
        return 0 ;
    }
}

void NextLine() {
    printf("\n");
}
void PrintPlus(int n) {
    printf("Le nombre magique est plus grand que %d\n", n);
}

void Congratulations() {
    printf("Felicitations \n") ;
}


int isMinus(int n, int randN) {
    if (n > randN)
    {
        return 1 ;
    } else 
    {
        return 0 ;
    }
}

void Reload() {
    printf("Veuillez recommencer \n") ;
}

void PrintMinus(int n) {
    printf("Le nombre magique est plus petit que %d !!! \n", n);
}
 
int main() {
    srand(time(NULL)); // permet de réinitialiser le nombre magique à chaque recompilation
    int randN, number;
    randN = rand() % 100 + 1 ;
    printf("Veuillez entrez un nombre \n");
    scanf("%d", &number);

    int compteur = 0;
    while ( randN != number )
    {
        if ( isMinus(number, randN) )
        {
            PrintMinus(number) ;
            Reload();
            scanf("%d", &number) ;
        } else if (isPlus(number, randN))
        {
            PrintPlus(number) ;
            Reload() ;
            scanf("%d", &number) ;
        }
        compteur++ ;
    }
    Congratulations() ;
    Congratulations() ;
    NextLine();
    printf("Vous avez trouve le nombre en %d coups !!! ", compteur) ;

    return 0;
}