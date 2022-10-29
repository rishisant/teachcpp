/*
VECTORS: driver.cpp
Do not touch this file. It is purely for the sake of running the code.
*/

#include "quiz.h"

/*
If you are testing the program, run the command 'make', first.
After the program has (hopefully) compiled, run the following:

./driver 5 -e
This will print out (if done correctly) 0, 1, 2, 3, 4, 5 all separated by newlines

./driver 10 -ne
This will print out 0 -> 10 all separated by newlines
*/

#define RED     "\033[1;31m"
#define GREY    "\033[1;37m"
#define CL      "\033[0m"

using std::stoi;

int main (int argc, char** argv) {

    // First check if there were too many or too few arguments.
    if (argc != 3) {
        cout << RED << "ERROR: " << CL << "Compile with the command: " << GREY << " ./driver -arg1 -arg2" << CL << "\n";
        cout << GREY << "NOTE: " << CL << "-arg1 can be any positive integer, whereas -arg2 must be -e for empty vector or -ne for non-empty vector\n";
        return 1;
    }

    // Declare non-empty and empty vectors.
    vector<int> empty = {};
    vector<int> non_empty = {100, 200, 300};

    // Declare final vector
    vector<int> result = {};

    // Gather arguments
    char* arg1 = argv[1];
    char* arg2 = argv[2];

    // Error checking
    int range = stoi((string)arg1);
    if (range < 0) {
        cout << RED << "ERROR: " << CL << "First argument must be a positive integer.\n";
    }

    // Check the second argument
    if ((string)arg2 == "-e") {
        result = empty;
        populate_vector(result, range);
    }
    else if ((string)arg2 == "-ne") {
        result = non_empty;
        populate_vector(result, range);
    }
    else {
        cout << RED << "ERROR: " << CL << "Commands were incorrect. Use the flags -e or -ne to execute the program properly\n";
        return 1;
    }

    // Finalize execution of the program
    for (int val : result) {
        cout << val << endl;
    }

}