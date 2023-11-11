/* A program to take input of name, roll and marks obtained by a student in 4 
subjects of 100 marks each and display the name, roll with percentage score secured. */
#include<stdio.h>

float grade(float, int);
void CGPA(float, int, int);
signed main()
{
    int total_course, roll, i, f = 0;
    float marks[15], total = 0, GPA_sum = 0;
    char name[25];
    printf("Enter Name: ");
    gets(name);
    printf("Enter Roll: ");
    scanf("%d", &roll);

    printf("Total course: ");
    scanf("%d", &total_course);
    printf("Enter marks\n");
    for(i = 0; i < total_course; i++){
        printf("ICE-110%d = ", i+1);
        scanf("%f", &marks[i]);
        total += marks[i];
    }
    printf("Name: %s\tRoll: %d\n", name, roll);
    printf("Mark Sheet\n");
    for(i = 0; i < total_course; i++){
        float x;
        x = grade(marks[i], i+1);
        GPA_sum += x;
        if(x == 0)
            f = 1;
    }
    if(f) printf("CGPA: F\n");
    else 
        printf("CGPA = %.2f\n",GPA_sum/(float)total_course);
    printf("Got %.2f marks\n", total/(float)total_course);

    return 0;
}
float grade(float mark, int n){
    if(mark >= 80){
        printf("ICE-110%d: A+\n", n);
        return 4.00;
    }
    else if(mark >= 70){
        printf("ICE-110%d: A\n", n);
        return 3.50;
    }
    else if(mark >= 60){
        printf("ICE-110%d: B\n", n);
        return 3.00;
    }
    else if(mark >= 50){
        printf("ICE-110%d: C\n", n);
        return 2.50;
    }
    else if(mark >= 40){
        printf("ICE-110%d: D\n", n);
        return 2.00;
    }
    else{
        printf("ICE-110%d: F\n", n);
        return 0.00;
    }
}
/* 
Input
Enter Name: Sajeeb Kumar Ray
Enter Roll: 200622
Total course: 5
Enter marks
ICE-1101 = 81
ICE-1102 = 83
ICE-1103 = 90
ICE-1104 = 94
ICE-1105 = 88

Output
Name: Sajeeb Kumar Ray  Roll: 200622
Mark Sheet
ICE-1101: A+
ICE-1102: A+
ICE-1103: A+
ICE-1104: A+
ICE-1105: A+
CGPA = 4.00
Got 87.20 marks
*/