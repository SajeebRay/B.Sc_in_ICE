// a program to add, subtract, multiply and divide two integers using user defined type function with return type.
#include<stdio.h>
int add(int a, int b){
    return (a+b);
}
int substract(int a, int b){
    return (a-b);
}
int multiply(int a, int b){
    return (a*b);
}
float divide(int a, int b){
    return ((float)a/(float)b);
}
int main()
{
    int x, y, a, b, c;
    float d;
    printf("Enter two number: ");
    scanf("%d %d", &x, &y);
    a = add(x,y);
    b = substract(x,y);
    c = multiply(x,y);
    d = divide(x,y);
    printf("Summation = %d\nSubstraction = %d\nMultiplication = %d\nDivision = %.2f\n",a,b,c,d);

    return 0;
}

/* 
Input:
Enter two number: 15 10

Output:
Summation = 25
Substraction = 5
Multiplication = 150
Division = 1.50
*/