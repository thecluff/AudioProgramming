#include <iostream>
using namespace std;

// "main" is the point of entry for the program

int main()
{ 

// These are local variables
// This is where the user's age will go
int age; // This declares an integer variable with the name "age"    
string name;

cout << "Hello World" << endl;
cout << "Please enter your age." << endl;
cin >> age;
cout << "Please enter your name." << endl;
cin >> name;
cout << "I see, " << name << "... your age is " << age << endl; 

return 0;
}