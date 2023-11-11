#include<iostream>
using namespace std;

class product{
public:
  int price;
  int code;
  void display(){
    cout << "Code: " << code << endl;
    cout << "Price: " << price << endl;
  }
};
int main()
{
  int product::*p = &product::price;
  int product::*c = &product::code;
  int x, y;
  cout << "Enter price and code: ";
  cin >> x >> y;
  product phone;
  phone.*p = x;
  phone.*c = y;
  cout << "Price: " << phone.price;
  cout << "\tCode: " << phone.code << endl;

  return 0;
}

/*
Input: 
  Enter price and code: 20000 195864
Output:
  Price: 20000    Co de: 195864
*/
