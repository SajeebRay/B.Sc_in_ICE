#include<iostream>
using namespace std;
class rectangle{
  int length = 20;
  int width = 6;
  public:
  void area(){
    cout << "The area of the rectangle is: " <<
        length*width << endl;
  }
};
class square{
  int length = 20;
  public:
  void area(){
    cout << "The area of the square is: " <<
      length*length << endl;
  } 
};
int main()
{
  rectangle rec;
  square sq;
  rec.area();
  sq.area();

  return 0;
}

/*

Output: 
The area of the rectangle is: 120
The area of the square is: 400
*/