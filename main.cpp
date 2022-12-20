//
//  main.cpp
//  task3
//
//  Created by Alyona Prasalova on 20.12.2022.
//

#include <iostream>

using namespace std;

int main()
{
    int N;
    cout << "Inter the length of the array: ";
    cin>>N;
    int A[N];
    int E;
    int k=0;
    for (int i = 0; i< N; i++)
    {
        cout << "Enter a number " << i + 1 << ": ";
        cin >> A[i];
        
    }
    int i=0;
    while(i < N){
        if(A[i]==i+1)
        {
            i++;
        }
        else
        {
            E=A[A[i]-1];
            A[A[i]-1]=A[i];
            A[i]=E;
            k++;
        }
    }
    if(k%2)
    {
        cout << "It is odd";
    }
    else
    {
        cout << "It is parity";
    }
    return 0;
}
