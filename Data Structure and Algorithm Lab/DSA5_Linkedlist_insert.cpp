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
void insert(int item, int loc){
  if(avail == -1){
    cout << "Overflow" << endl;
  }
  int newloc = avail;
  avail = link[avail];
  info[newloc] = item;
  if(loc == 1){
    link[newloc] = start;
    start = newloc;
  }
  else {
    int pos = start;
    while(loc > 2){
      if(info[link[pos]] == 0)  break;
      pos = link[pos]; loc--;
    }
    link[newloc] = link[pos];
    link[pos] = newloc;
  }
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
  int item, loc;
  cout << "Enter item and location: ";
  cin >> item >> loc;
  insert(item, loc);
  cout << "After inserting the list is: " << endl;
  loc = start;
  while(loc != 0){
    cout << info[loc] << " ";
    loc = link[loc];
  }
}

/*
Input: 
Enter item and location: 555 3
output:
After inserting the list is: 
84 62 555 74 100 74 78 
*/