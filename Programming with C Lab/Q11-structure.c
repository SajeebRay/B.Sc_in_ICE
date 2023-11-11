//  a program to store information of 5 students in structure and display it
#include<stdio.h>
struct info
{
    char name[25];
    int roll;
    float age;
};
int main()
{
    int i;
    struct info student[5];
    printf("Enter informations: ");
    for(i = 0; i < 5; i++){
        scanf("%s", student[i].name);
        scanf("%d %f", &student[i].roll, &student[i].age);
    }

    for(i = 0; i < 5; i++){
        printf("Name: %s\t", student[i].name);
        printf("Roll: %d\tAge: %.2f\n", student[i].roll, student[i].age);
    }
    return 0;
}

/*
Input: 
Sajeeb  200622  20
Naima   200601  20.5
Dibakor 200623  21
Imon    200621  22
Sharif  200627  21.5

Output:
Name: Sajeeb    Roll: 200622    Age: 20.00
Name: Naima     Roll: 200601    Age: 20.50
Name: Dibakor   Roll: 200623    Age: 21.00
Name: Imon      Roll: 200621    Age: 22.00
Name: Sharif    Roll: 200627    Age: 21.50
*/