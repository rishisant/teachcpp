/*
FUNCTIONS: driver.cpp
Do not touch this file. It is purely for the sake of running the code.
*/

#include "quiz.h"

/*
If you are testing the program, run the command 'make', first.
After the program has (hopefully) compiled, run the following:

./driver -min -v1
This will compute the minimum element within vector 1.

./driver -max -v3
This will compute the maximum element within vector 3.
*/

#define RED     "\033[1;31m"
#define GREY    "\033[1;37m"
#define CL      "\033[0m"

int main (int argc, char** argv) {

    // First check if there were too many or too few arguments.
    if (argc != 3) {
        cout << RED << "ERROR: " << CL << "Compile with the command: " << GREY << " ./driver -arg1 -arg2" << CL << "\n";
        cout << GREY << "NOTE: " << CL << "-arg1 can be -min or -max, while -arg2 is -v1, -v2, -v3, -v4, or -v5\n";
        return 1;
    }

    // Select from either min of vector or max of vector
    char* arg1 = argv[1];
    char* arg2 = argv[2];
    
    // Declare vectors
    vector<int> vector_one = {1, 2, 3, 4, 5};
    vector<int> vector_two = {2, 4, 6, 8, 10};
    vector<int> vector_three = {50, 10, 15, 25, 40};
    vector<int> vector_four = {105, 253, 1003, 948, 805};
    vector<int> vector_five = {3, 11, -3, 9, -10};

    // Declaring conditionals & variables
    bool findMin;

    // Checking the first argument
    if ((string)arg1 == "-min") {
        findMin = true;
    }
    else if ((string)arg1 == "-max") {
        findMin = false;
    }
    else {
        cout << RED << "ERROR: " << CL << "Commands were incorrect. Use the flags -min or -max to execute the program properly\n";
        return 1;
    }

    // Checking the second argument and finalizing execution of the program
    if ((string)arg2 == "-v1") {
        // Using ternary operator to simplify
        int val = findMin ? min_elem(vector_one) : max_elem(vector_one);
        cout << val;
    }
    else if ((string)arg2 == "-v2") {
        int val = findMin ? min_elem(vector_two) : max_elem(vector_two);
        cout << val;
    }
    else if ((string)arg2 == "-v3") {
        int val = findMin ? min_elem(vector_three) : max_elem(vector_three);
        cout << val;
    }
    else if ((string)arg2 == "-v4") {
        int val = findMin ? min_elem(vector_four) : max_elem(vector_four);
        cout << val;
    }
    else if ((string)arg2 == "-v5") { 
        int val = findMin ? min_elem(vector_five) : max_elem(vector_five);
        cout << val;
    }

    // Catch error here if flag was incorrect.
    else {
        cout << RED << "ERROR: " << CL << "Commands were incorrect. The only options for the second flag are -v1, -v2, -v3, -v4, or -v5\n";
        return 1;
    }

    // Program has finished
    return 0;
}