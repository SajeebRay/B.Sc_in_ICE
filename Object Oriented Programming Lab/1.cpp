#include<iostream>
using namespace std;

int main()
{
  int n,i,j;
  cout << "Enter Array size: ";
  cin >> n;
  int arr[n];
  cout << "Enter elements: ";
  for(i = 0; i < n; i++) cin >> arr[i];
  for(i = 0; i < n; i++){
    int index = i;
    for(j = i; j < n; j++){
      if(arr[index] > arr[j]) index = j;
    }
    if(index != i){
      int temp = arr[i];
      arr[i] = arr[index];
      arr[index] = temp;
    }
  }
  cout << "Elements are in ascending order: ";
  for(int x : arr) cout << x << " ";
  cout << endl;

  return 0;
}

/*
Input:
Enter Array size: 5
Enter elements: 6 7 2 9 4
Output:
Elements are in ascending order: 2 4 6 7 9
*/