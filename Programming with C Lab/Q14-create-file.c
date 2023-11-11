// a C program to create a file “test.txt” and enter your name and roll into the file.
#include<stdio.h>
int main()
{
    int roll = 200622;
    char name[25] = "Sajeeb Kumar Ray";
    FILE *fp;
    fp = fopen("Test.txt", "w");
    fprintf(fp, "Name: %s\nRoll: %d\n", name, roll);
    return 0;
}

/*
Output:
Created a text file "Test.txt" with my name and roll
*/