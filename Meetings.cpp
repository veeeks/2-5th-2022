//cerner_2tothe5th_2022
#include <iostream>
#include <vector>

using namespace std;

bool CanAttedn(vector<vector<int>>& Timings) {
    sort(Timings.begin(), Timings.end(), [] (const vector<int>& a, const vector<int>& b) {
            return a[0] < b[0]; });
    int len = Timings.size();
    if (len < 2) return true;
    for (int i=0; i<len-1; ++i) {
        if (Timings[i][1] > Timings[i+1][0]) return false;
    }
    return true;
}

int main() {
    vector<vector<int>> meetings {{0,30},{35,40},{45,0}};
    if( CanAttedn(meetings) )
    cout<< "Can attend all meetings";
    else
    cout<<"Cannot attend all meetings";
    return 0;
}
