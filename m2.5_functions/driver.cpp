/*
FUNCTIONS: driver.cpp
Do not touch this file. It is purely for the sake of running the code.
*/

#include "quiz.h"

/*
If you are testing the program, run the command 'make', first.
After the program has (hopefully) compiled, run the following:

./driver helloworld 
This will return true if helloworld is detected as a palindrome and false otherwise.
*/

#define RED     "\033[1;31m"
#define GREY    "\033[1;37m"
#define CL      "\033[0m"

using std::boolalpha;

int main (int argc, char** argv) {

    // First check if there were too many or too few arguments.
    // For the sake of test cases, will add a secret argument argv[2] => "-vs"
    if (argc != 2 && ((string)argv[2] != "-vs")) {
        cout << RED << "ERROR: " << CL << "Compile with the command: " << GREY << " ./driver -arg1" << CL << "\n";
        cout << GREY << "NOTE: " << CL << "-arg1 can be any string with no whitespace\n";
        return 1;
    }

    // Gather the char input
    char* arg1 = argv[1];

    // Create a string with the char input using string casting
    string to_pal = (string)arg1;

    // Vectorize the string
    vector<char> vec = to_char_vector(to_pal);

    // Check if the vector is correct in the -vs case
    if (argc == 3 && (string)argv[2] == "-vs") {
        bool good = true;
        for (size_t i = 0; i < to_pal.length(); i++) {
            if (vec[i] != to_pal[i]) good = false;
        }
        cout << boolalpha << good;
        return 0;
    }
    else {
        cout << boolalpha << is_palindrome(vec);
        return 0;
    }

}