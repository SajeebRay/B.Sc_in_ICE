#include<iostream>
#include<fstream>
using namespace std;

int main()
{
  ifstream in("test.txt");
  string name;
  int roll;
  getline(in,name);
  in>>roll;
  cout << "Name: " << name << endl;
  cout << "Roll: " << roll << endl;
  return 0;
}

/*
Output:
Name: Sajeeb kumar Ray
Roll: 200622
*/