#include<bits/stdc++.h> 
using namespace std; 

int main()
{
  int arr[] = {10,1,4,3,2,-1,5};
  int n = sizeof(arr)/sizeof(arr[0]);
  for(int i = 1 ; i < n; i++){
    for(int j = 0; j < n-i; j++){
      if(arr[j] > arr[j+1]) 
        swap(arr[j], arr[j+1]);
    }
  }
  for(auto x: arr) cout << x << " ";
  cout << endl;
}