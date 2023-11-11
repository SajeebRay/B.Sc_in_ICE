#include <bits/stdc++.h>
using namespace std;

const int N = 100;
vector<int> parent(N);
vector<int> sz(N);
void make_set(int v){
	parent[v] = v;
	sz[v] = 1;
}
int find_set(int v){
	if(v == parent[v])
		return v;
	return parent[v] = find_set(parent[v]);
}
void union_set(int a, int b){
	a = find_set(a);
	b = find_set(b);
	if(a != b){
		if(sz[a] < sz[b]) 
			swap(a, b);
		parent[b] = a;
		sz[a] += sz[b];
	}
}
int main()
{
	for(int i = 0; i<N; i++){
		make_set(i);
	}
	int v, e, src,dst,wet;
	cout << "Enter Number of vectices and edges: ";
	cin >> v >> e;
	vector<vector<int> > edges;
	cout << "Enter Source, destination and weight: ";
	for(int i = 0; i<e; i++){
		cin>>src>>dst>>wet;
		edges.push_back({wet,src,dst});
	}
	sort(edges.begin(), edges.end());
	int cost = 0;
	cout << "Selected edges are: " << endl;
	for(auto x:edges){
		wet = x[0];
		src = x[1], dst = x[2];
		if(find_set(src) == find_set(dst))
			continue;
		else{
			cout << src << " -- " << dst << endl;
			cost += wet;
			union_set(src, dst);
		}
	}
	cout << "Total cost is: " << cost << endl;
}

/*
Input: 
Enter Number of vectices and edges: 7 8
Enter Source, destination and weight: 
1 2 28   2 3 16   3 4 12   4 5 22
5 6 25   6 1 10   5 7 24   2 7 14

Output: 
Selected edges are:
6 -- 1
3 -- 4
2 -- 7
2 -- 3
4 -- 5
5 -- 6
Total cost is: 99
*/