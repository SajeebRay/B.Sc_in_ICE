// a program to calculate sum of first 20 natural numbers using recursive function.
#include<stdio.h>
int summation(int n){
    int res;
    if(n == 0)
        return 0;
    res = n+summation(n-1);
}
int main()
{
    int n = 20, sum;
    sum = summation(n);
    printf("Sum is: %d\n", sum);

    return 0;
}

/*
Output:
Sum is: 210
*/