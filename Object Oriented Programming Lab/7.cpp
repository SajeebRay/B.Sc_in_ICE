#include<iostream>
using namespace std;
class student{
  string name;
  int roll;
public:
  void b_input(){
    cout << "Enter name: ";
    getline(cin, name);
    cout << "Enter roll: ";
    cin >> roll;
  }
  void b_display(){
    cout << "Name: " << name << endl;
    cout << "Roll: " << roll << endl;
  }
};
class grade : private student{
int mark;
public:
  void input(){
    b_input();
    cout << "Enter marks: ";
    cin >> mark;
  }
  void display(){
    b_display();
    if(mark >= 80) 
      cout << "Grade: A+" << endl;
    else if(mark >= 75)
      cout << "Grade: A" << endl;
    else 
      cout << "Grade: F" << endl;
  }
};
int main()
{
  grade stu;
  stu.input();
  stu.display();

  return 0;
}

/*
Input: 
  Enter name: Sajeeb Kumar Ray
  Enter roll: 200622
  Enter marks: 81

Output:
  Name: Sajeeb Kumar Ray
  Roll: 200622
  Grade: A+
*/