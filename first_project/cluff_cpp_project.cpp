#include <iostream>
using namespace std;

// "main" is the point of entry for the program
// int my_func(int value) {
//     cout << value << endl;
//     // cout << age << endl;
//     return 0;
// }

int main()
{ 
// A function is a block of code that is configured with a name, a place to insert input values, and an output
// These are local variables - meaning 
// This is where the user's age will go
int age; // This declares an integer variable with the name "age"    
string name;

cout << "Hello! Welcome to Charlie's C++ program." << endl;
cout << "What's your name?" << endl;
cin >> name;
cout << "Thanks. What's your age?" << endl;
cin >> age;
cout << "Excellent. I hope you have a good day, " << name << ". Cheers to being " << age << " years old."<< endl; 

// my_func(100);
return 0;
}