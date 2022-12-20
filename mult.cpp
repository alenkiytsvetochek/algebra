//
//  main.cpp
//  task2
//
//  Created by Alyona Prasalova on 18.12.2022.
//

#include <iostream>
using namespace std;

int main()//произведение
{
    int N;
    cout << "Inter the length of the array: ";
    cin>>N;
    int A[N],B[N],C[N];
    for (int i = 0; i< N; i++)
    {
        cout << "Enter a number " << i + 1 << ": ";
        cin >> A[i];
        
    }
    for(int i = 0; i < N; i++)
    {
        //cout<< B[i];
        //B[A[i]-1]=i+1;
        C[i]=B[A[i]-1];
        cout << C[i];
        
    }
    return 0;
}
