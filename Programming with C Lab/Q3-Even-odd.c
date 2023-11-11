// a program to print whether a given number is even or odd
#include<stdio.h>
signed main()
{
    int a;
    printf("Enter a number: ");
    scanf("%d",&a);
    (a%2)?printf("%d is a odd number\n",a):
        printf("%d is a even number\n",a);
    return 0;
}
/*
Input:
Enter a number: 11

Output:
11 is a odd number
*/