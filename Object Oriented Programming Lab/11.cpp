#include<iostream>
using namespace std;

int main()
{
  int num1, num2, choice;
  cout << "Enter two integers: ";
  cin >> num1 >> num2;
  cout << "Choose 1 for Summation.\n \t2 for Subtraction.\n";
  cout << "\t3 for Multiplication.\n \t4 for Division.\n";
  cout << "Enter 0 for exit... " << endl;
  
  while(true){
    cout << "Enter choice: ";
    cin >> choice;
    if(choice == 0) break;
    switch (choice)
    {
    case 1:
      cout << "Summation is: " << num1+num2 << endl;
      break;
    case 2:
      cout << "Subtraction is: " << num1-num2 << endl;
      break;
    case 3:
      cout << "Multiplication is: " << num1*num2 << endl;
      break;
    case 4:
      cout << "Division is: " << num1/num2 << endl;
      break;
    default:
      cout << "Invalid option\a.\n\t\tTry again!" << endl;
      break;
    }
  }
  

  return 0;
}

/*
Enter two integers: 15 10
Choose 1 for Summation.
        2 for Subtraction.
        3 for Multiplication.
        4 for Division.
Enter 0 for exit...
Enter choice: 1
Summation is: 25
Enter choice: 2
Subtraction is: 5
Enter choice: 3
Multiplication is: 150
Enter choice: 4
Division is: 1
Enter choice: 5
Invalid option.
                Try again!
Enter choice: 0
*/