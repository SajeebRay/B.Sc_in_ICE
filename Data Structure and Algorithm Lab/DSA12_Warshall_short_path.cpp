#include<bits/stdc++.h>
using namespace std;

int main() {
    int i, j, k, v, e, src, dst, wt;
    cout << "Enter number of vertices and edges: ";
    cin >> v >> e;
    int adj[v+1][v+1];
    for(i = 0; i <= v; i++){
      for(j = 0; j <= v; j++){
        if(i == j) adj[i][j] = 0;
        else adj[i][j] = 999;//assume 999 is infinity
      }
    }
    cout << "Enter source, destination and weight: " << endl;
    for (i = 0; i < e; i++) {
        cin >> src >> dst >> wt;
        adj[src][dst] = wt;
    }

    for (k = 1; k <= v; k++) {
        for (i = 1; i <= v; i++) {
            for (j = 1; j <= v; j++) {
                adj[i][j] = min(adj[i][j], adj[i][k] + adj[k][j]);
            }
        }
    }

    cout << "Shortest path matrix is: " << endl;
    for (i = 1; i <= v; i++) {
        for (j = 1; j <= v; j++) {
            cout << adj[i][j] << " ";
        }
        cout << endl;
    }
    
    ////////////
    int source = 4, destination = 2; // keyboard thekeo egula input nite paro
    cout << source << " to " << destination << " distance is: " << adj[source][destination] << endl;
    // output: 4 to 2 distance is: 6
    return 0;
}
/*
Input:
Enter number of vertices and edges: 4 6
Enter source, destination and weight:
1 2 6
2 4 3
3 2 4
1 1 8
4 1 5
4 3 2

Ouput:
Shortest path matrix is:
8 6 11 9
8 0 5 3
12 4 0 7
5 6 2 0
*/