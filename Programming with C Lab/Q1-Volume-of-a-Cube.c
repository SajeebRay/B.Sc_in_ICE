/* A Program to calculate and display the volume of a CUBE taking its height,
width and depth from keyboard. */

#include<stdio.h>
signed main()
{
    float a, b, c, volume;
    printf("Enter the value of length, width and height respectively: ");
    scanf("%f %f %f", &a, &b, &c);
    volume = a*b*c;
    printf("The volume of the cube is: %9.2f\n", volume);
    return 0;
}
/*
Input:
Enter the value of length, width and height respectively: 2.5 2 1.5

Output:
The volume of the cube is:      7.50
*/