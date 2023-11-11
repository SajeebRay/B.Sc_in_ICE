// a program to find biggest among three numbers using pointer.
#include<stdio.h>
int * biggest(int *a, int *b, int *c){
    if (*a >= *b && *a >= *c)
        return a;
    else if (*b >= *a && *b >= *c)
        return b;
    else
        return c;
}
int main()
{
    int x, y, z;
    int *big;
    printf("Enter three numbers: ");
    scanf("%d %d %d", &x, &y, &z);
    big = biggest(&x, &y, &z);
    printf("Maximum is: %d\n", *big);
}

/*
Input:
Enter three numbers: 6 2 8
Output:
Maximum is: 8
*/