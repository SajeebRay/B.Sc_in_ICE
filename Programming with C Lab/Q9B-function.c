// a C proġram to find maximum and minimum between two numbers using functions
#include<stdio.h>
void MaxMin(int a, int b){
    (a>b)? printf("%d is maximum.\n", a):
            printf("%d is Maximum.\n", b);
    (a<b)? printf("%d is minimum.\n", a):
            printf("%d is minimum.\n", b);
}
int main()
{
    int x, y;
    printf("Enter two numbers: ");
    scanf("%d %d", &x, &y);
    MaxMin(x, y);

    return 0;
}

/*
Input
Enter two numbers: 45 20

Output
45 is maximum.
20 is minimum.
*/