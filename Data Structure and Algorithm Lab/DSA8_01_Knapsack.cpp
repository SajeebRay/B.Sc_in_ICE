#include<bits/stdc++.h>
using namespace std;

int table[1000][5000]; //tabulation table

///Selected weight dekhar jonne
vector<int> selected(int pro[], int n, int maxW){
  int maxi = table[n][maxW];
  vector<int> ans;
  for(int i = n; i > 0; i--){
    bool found = false;
    for(int j = maxW; j > 0; j--){
      if(table[i][j] == maxi && table[i][j-1] != maxi){
        if(table[i-1][j] != maxi){
          found = true;
          break;
        }
        else {
          i--;
          j++;
        }
      }
    }
    if(found){
      ans.push_back(i);
      maxi -= pro[i-1];
      found = false;
    }
  }
  return ans;
}
int maxProfit(int profit[], int weight[], int value, int maxW)
{
    for (int i = 0; i <= value; i++){ //row indicates value
        for (int j = 0; j <= maxW; j++){ // column indicates maximum capacity
            if (i == 0 || j == 0) // phi(first row and column) is zero
                table[i][j] = 0;
            else if (j >= weight[i-1]) // if this false then the column is negative, but its not fare
                table[i][j] = max(table[i-1][j], (table[i-1][j-weight[i-1]] + profit[i-1]));
            else // just copy the upper value
                table[i][j] = table[i-1][j];
        }
    }
    return table[value][maxW];
}
int main()
{
    int n = 4, C = 40;
    int p[] = {11,21,31,33};
    int w[] = {2,11,22,15};
    int x = maxProfit(p, w, n, C);
    cout << "Maximum Profit: " << x << endl;

    //Selected weigh er jonne
    vector<int> ans = selected(p, n,C);
    for(auto a : ans) cout << a << " ";

    // for(int i = 0; i <= n; i++){
    //     for(int j = 0; j <= C; j++)
    //         cout << table[i][j] << " ";
    //     cout << endl;
    // }

    return 0;
}

/*
Output: Maximum Profit: 75
*/