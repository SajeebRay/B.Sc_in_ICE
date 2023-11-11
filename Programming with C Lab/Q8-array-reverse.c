// a Program to reverse the array elements in C Programming.
#include<stdio.h>
int main()
{
    int i, arra[5];
    printf("Enter elements: ");
    for(i = 0; i < 5; i++)
        scanf("%d", &arra[i]);
    printf("Reversed elements are: ");
    for(i = 4; i >= 0; i--)
        printf("%d ", arra[i]);
    printf("\n");
    
    return 0;
}
/*
Input
7 8 3 9 2

Output
Reversed elements are: 2 9 3 8 7
*/