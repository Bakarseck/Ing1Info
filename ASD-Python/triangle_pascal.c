#include<stdio.h>

void Pascal(int n) {
    printf("%d \n", 1);
    for (int i = 1; i < n; i++)
    {
        printf("%d \t", 1);
        for (int j = 0; j < i; j++)
        {
            printf("%d \t", i+j);
        }
        printf("%d", 1);
        printf("\n");
    } 
}

int main() {
    Pascal(5);
}