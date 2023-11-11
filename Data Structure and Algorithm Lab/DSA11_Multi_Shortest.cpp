#include<bits/stdc++.h>
using namespace std;

int adj[100][100];
int main()
{
  int i,j,k,stages, min, ver, edges, src, dst, wet, distance = 0;
  cout << "Enter Total Stage, Vertice and Edge: ";
  cin >> stages >> ver >> edges;
  int cost[ver+1], d[ver+1],path[ver+1];
  for(i = 0; i <= ver; i++)
    cost[i] = 0;
  cout << "Enter paths: ";
  for(i = 1; i <= edges; i++){
      cin >> src >> dst >> wet;
      adj[src][dst] = wet;
  }
  cost[ver] = 0;
  for(i = ver-1; i >= 1; i--){
    min = INT_MAX;
    for(k = i+1; k <= ver; k++){
      if(adj[i][k] != 0 && adj[i][k]+cost[k]<min){
        min = adj[i][k] +cost[k];
        d[i] = k;
      }
    }
    cost[i] = min;
  }
  path[1] = 1;
  path[stages] = ver;
  for(i = 2; i < stages; i++)
    path[i] = d[path[i-1]];

  cout << "Path is: ";
  for(i = 1; i < stages; i++){
    cout << path[i] << " --> ";
    distance += adj[path[i]][path[i+1]];
  }
  cout << path[stages];
  cout << "\nTotal distance: " << distance << endl;

  return 0;
}
/*
Input:
Enter Total Stage, Vertice and Edge: 4 8 13
Enter paths: 1 2 2
1 3 1
1 4 3
2 5 2
2 6 3
3 5 6
3 6 7
4 5 6
4 6 8
4 7 9
5 8 6
6 8 4
7 8 5

Output: 
Path is: 1 --> 2 --> 6 --> 8
Total distance: 9
*/
