#include<stdio.h>

int taille(char *mot) {
    int len;
    while (mot[len] != '\0')
    {
        len++;
    }
    return len;
}

int palindrom_it(char *mot) {
    // Une variable pour compter le nombre de caractère dans le mot
    int len ;
    len = taille(mot);
    int i = 0;

    while (i < len && mot[i] == mot[len - 1])
    {
        i += 1;
        len -= 1;
    }
    
    if (i >= len)
    {
        return 1;
    } else
    {
        return 0;
    }
    
    
    
    
}

int palindrom_rec(char *mot) {
    int i = 0;
    int len = taille(mot);

    if (i < len)
    {
        if (mot[i] == mot[len-1-i])
        {
            i++;
        }
        palindrom_rec(mot);
    }
}

int main() {
    printf("%d", palindrom_it("matam")) ; 
}