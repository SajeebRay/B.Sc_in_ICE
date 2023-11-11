/* A C program to create a “Test.txt” file and write your Roll, Name into the 
file. Again display the information from that file.*/
#include<stdio.h>
int main()
{
    FILE *fp, *fp1;
    int roll = 200622;
    char name[25] = "Sajeeb Kumar Ray";
    fp = fopen("Test.txt", "w");
    fprintf(fp, "%s\n%d", name, roll);
    fclose(fp);
    fp = fopen("Test.txt", "r");
    fgets(name, 25, fp);
    fscanf(fp, "%d",&roll);
    printf("Name: %sRoll: %d\n", name, roll);

    return 0;
}
/*
A file created with name and roll.
then again open this file and, get the information
Name: Sajeeb Kumar Ray
Roll: 200622
*/
