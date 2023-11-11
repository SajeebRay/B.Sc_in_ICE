#include<iostream> 
using namespace std;
int main()
{
    int aray[100]; 
    int n, i, j, item, position; 
    cout << "Enter Number of Elements: "; 
    cin >> n;
    cout << "Enter Eements: "; 
    for(int i = 0; i < n; i++)
        cin >> aray[i]; 

    cout << "The Array Elements: " ; 
    for(int i = 0; i < n; i++)
        cout << aray[i] << " "; 
    cout << endl; 

///////////////////// insert /////////////////
    cout << "Enter Inserting Postion: ";
    cin >> position;
    position--; // Here start position 0, not 1
    cout << "Enter item: ";
    cin >> item;
    for(int i = n-1; i >= position; i--){
      aray[i+1] = aray[i];
    }
    aray[position] = item;
    n++; // array size increased;

    cout << "The Updating Array: "; 
    for(i = 0; i < n; i++)
        cout << aray[i] << " "; 
    cout << endl; 
/////////////////////// delete ///////////////
    cout << "Enter Deleting Position: "; 
    cin >> position; 
    position = position -1; // karon start 0 index theke 
    item = aray[position];
    cout << "Deleting Element = " << item << endl;
    for(j = position; j <= n - 1; j++)
        aray[j] = aray[j+1];
    n--; // array size decreased

    cout << "The Updating Array: "; 
    for(i = 0; i < n; i++)
        cout << aray[i] << " "; 
    cout << endl; 

    return 0; 
}

/*
Enter Number of Elements: 5 
Enter Eements: 34 62 27 77 2
The Array Elements: 34 62 27 77 2 

Enter Inserting Postion: 4
Enter item: 454
The Updating Array: 34 62 27 454 77 2 

Enter Deleting Position: 1
Deleting Element = 34
The Updating Array: 62 27 454 77 2
*/