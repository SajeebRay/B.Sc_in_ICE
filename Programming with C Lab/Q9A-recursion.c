//  a program to calculate factorial of a number using recursion
#include<stdio.h>
int factorial(int n){
    int res;
    if(n == 1)
        return 1;
    res = n * factorial(n-1);
    return res;
}
int main()
{
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    printf("Factorial of %d is: %d", n, factorial(n));
    
    return 0;
}

/*
Input 
Enter a number: 5

Output
Factorial of 5 is: 120
*/