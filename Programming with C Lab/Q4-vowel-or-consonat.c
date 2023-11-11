// a program to find whether a character is consonant or vowel using switch statement.
#include<stdio.h>
signed main()
{
    char ch,chc;
    int flag = 0;
    printf("Enter a character: ");
    scanf("%c",&ch);
    chc = ch;
    if(chc >= 97 && 122 >= chc) //if the character is written on small letter
        chc -= 32;
    switch (chc)
    {
    case 65:
        printf("%c is vowel\n",ch);
        break;
    case 69:
        printf("%c is vowel\n",ch);
        break;
    case 73:
        printf("%c is vowel\n",ch);
        break;
    case 79:
        printf("%c is vowel\n",ch);
        break;
    case 85:
        printf("%c is vowel\n",ch);
        break;
    default:
        printf("%c is consonant\n",ch);
        break;
    }
    return 0;
}
/*
'a','e','i','o','u','A','E','I','O','U'
 97 101 105 111 117 65 69 73 79 85

Input:
Enter a character: S

Output:
S is consonant
*/