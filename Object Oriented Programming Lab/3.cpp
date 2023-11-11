#include<iostream>
using namespace std;

int main()
{
  int n, i, j;
  cout <<"Enter number of lines: ";
  cin >> n;

  cout << "Left triangle is: " << endl;
  for(i = 1; i <= n; i++){
    for(j = 1; j <= i; j++){
      cout << "* ";
    }
    cout << endl;
  }
  return 0;
}

/*
Input:
Enter number of lines: 5
Output: 
Left triangle is: 
*
* *
* * *
* * * *
* * * * *
*/