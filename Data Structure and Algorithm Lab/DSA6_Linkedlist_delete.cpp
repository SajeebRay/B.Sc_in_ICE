#include<bits/stdc++.h>
using namespace std;
int N = 16;
int info[100], link[100];
int start = -1, avail = -1, location;
void create_list(int val, int loc)
{
  if(start == -1) {
    start = location = loc;
    info[start] = val;
  }
  else{
    info[loc] = val;
    link[location] = loc;
    location = loc;
  }
}
void avail_list(){
  for(int i = 1; i<=N; i++){
    if(info[i] == 0){
      if(avail == -1){
        avail = location = i;
      }
      else {
        link[location] = i;
        location = i;
      }
    }
  }
}
void Delete(int loc){
  if(loc == 1){
    info[start] = 0;
    int loc = start;
    start = link[start];
    link[loc] = avail;
    avail = loc;
    return;
  }
  int preLoc = start;
  while(loc > 2){
    if(info[link[preLoc]] == 0)  break;
    preLoc = link[preLoc]; loc--;
  }
  loc = link[preLoc];
  link[preLoc] = link[loc];
  info[loc] = 0;
  link[loc] = avail;
  avail = loc;
}

int main()
{
  create_list(84, 5);
  create_list(62, 12);
  create_list(74, 7);
  create_list(100, 8);
  create_list(74, 13);
  create_list(78, 6);
  avail_list();

  // for(int i = 0; i <= N; i++){
  //   cout << info[i] << " " << link[i] << endl;
  // }
  int loc;
  cout << "Enter location: ";
  cin >> loc;
  Delete(loc);
  cout << "After inserting the list is: " << endl;
  loc = start;
  while(loc != 0){
    cout << info[loc] << " ";
    loc = link[loc];
  }
}

/*
Input: 
Enter location: 2
Output:
After inserting the list is:
84 74 100 74 78
*/