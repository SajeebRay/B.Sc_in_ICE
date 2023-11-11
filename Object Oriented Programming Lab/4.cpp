#include<iostream>
#include<fstream>

using namespace std;
int main()
{
  ofstream out("test.txt");
  string name = "Sajeeb Kumar Ray";
  int roll = 200622;
  out << name << endl;
  out << roll << endl;

  return 0;
}

/*
Output in the text.txt file is:
Name: Sajeeb kumar Ray
Roll: 200622
*/