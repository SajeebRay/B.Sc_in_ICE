//a program to insert 5 elements into an array and print the elements of the array
#include<stdio.h>
int main()
{
    int i, arra[5];
    printf("Enter elements: ");
    for(i = 0; i < 5; i++)
        scanf("%d", &arra[i]);
    printf("Elements are: ");
    for(i = 0; i < 5; i++)
        printf("%d ", arra[i]);
    printf("\n");
    
    return 0;
}
/*
Input
7 8 3 9 2

Output
Elements are: 7 8 3 9 2
*/