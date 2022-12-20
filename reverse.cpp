//
//  main.cpp
//  task1
//
//  Created by Alyona Prasalova on 18.12.2022.
//

#include <iostream>
#include <array>

using namespace std;
int main() //обратная
{
    int N;
    cout << "Inter the length of the array: ";
    cin>>N;
    int A[N],B[N];
    for (int i = 0; i< N; i++)
     {
       cout << "Enter a number " << i + 1 << ": ";
       cin >> A[i];
         
     }
    for(int i = 0; i < N; i++)
    {
        B[A[i]-1]=i+1;
        cout<< B[i];
    }
    return 0;
}
