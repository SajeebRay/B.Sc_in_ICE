//  a C program to display existing information from a file "Input.txt".
#include<stdio.h>
int main()
{
    int roll;
    char name[25];
    FILE *fp;
    fp = fopen("Input.txt", "r");
    fgets(name, 25, fp);
    fscanf(fp, "%d",&roll);
    printf("Name: %sRoll: %d\n", name, roll);

    return 0;
}
/*
Output:
Name: Sajeeb Kumar Ray
Roll: 200622
*/