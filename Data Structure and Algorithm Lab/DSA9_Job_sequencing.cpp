#include<bits/stdc++.h>
using namespace std;


int job_seq(int pro[], int dln[], int stot[], int n)
{
    for(int i = 1; i <= n; i++){
        for(int j = 1; j <= n - i; j++){
            if(pro[j] < pro[j+1]){
                swap(pro[j], pro[j+1]);
                swap(dln[j], dln[j+1]);
            }
        }
    }

    dln[0] = stot[0] = 0;
    stot[1] = 1;
    int i, j, completed = 1;
    for(i = 2; i <= n; i++){
        int latest = completed;
        while(dln[stot[latest]] > dln[i] && dln[stot[latest]] != latest){
            latest--;
        }
        if(dln[stot[latest]] <= dln[i] && dln[i] > latest) {
            for(j = completed; j >= latest+1; j--)
                stot[j+1] = stot[j];
            stot[latest+1] = i;
            completed++;
        }
    }
    return completed;
}

int main()
{
    int n = 7, stot[100];
    int pro[8] = {0, 3, 5, 20, 18, 1, 6, 30}; // make this 1 based indexing
    int dln[8] = {0, 1, 3, 4, 3, 2, 1, 2};
    map<int, int> id_mem;
    for(int i = 1; i <= n; i++){
        id_mem[pro[i]] = i;
    }
    int completed = job_seq(pro, dln, stot, n);

    // cout<<"After Sorting: "<<endl;
    // for(int i = 1; i <= n; i++)
    //     cout<<pro[i]<<" "<<dln[i]<<endl;
    cout<<"Job sequence is: ";
    for(int i = 1; i <= completed; i++)
        cout << "J" << id_mem[pro[stot[i]]]<<" ";
    

    int profit = 0;
    for(int i = 1; i <= completed; i++)
        profit += pro[stot[i]];
    cout << "\nTotal profit: " << profit << endl;

    return 0;
}
/*
Job sequence is: J6 J7 J4 J3 
Total profit: 74
*/