#include <bits/stdc++.h>
using namespace std;

int binary_search(int arr[], int n, int x) {
    int l = 0, r = n - 1;
    while (l <= r) {
        int m = l + (r - l) / 2;
        if (arr[m] == x)
            return m;
        else if (arr[m] < x)
            l = m + 1;
        else
            r = m - 1;
    }
    return -1;
}
int main() {
    int arr[] = {10, 2, 3, 4, 5, 6, 7, 8};
    int n = sizeof(arr) / sizeof(arr[0]);
    int x = 5;    
    int index = binary_search(arr, n, x);
    if (index != -1)
        cout << x << " found at index " << index << endl;
    else
        cout << x << " not found in array" << endl;
    return 0;
}
/*
Output:
5 found at index 4
*/