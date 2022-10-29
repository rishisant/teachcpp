/*
FUNCTIONS: quiz.cpp
Complete the areas marked 'TO-DO' and run the following command in your
terminal: make test

Pass all the test cases to be complete with this module!
*/

#include "quiz.h"

/*
vector<char> to_char_vector(string str) :
    Returns a vector made up of all the characters from the string.

    If str = "helloworld", then the returned vector would equal
    {'h', 'e', 'l', 'l', 'o', 'w', 'o', 'r', 'l', 'd'}
*/

vector<char> to_char_vector(string& str) {
    vector<char> result; // Declaring a vector of type char

    // TO-DO: Iterate through the string and use the push_back() function on the vector

    return result; // Returning the vector
}

/*
bool is_palindrome(vector<char> vec) :
    Returns true or false depending if the world is a palindrome or not.

    If given the vector {'r', 'a', 'c', 'e', 'c', 'a', 'r'}, it would return
    true as the word "racecar" is a palindrome.
*/

bool is_palindrome(vector<char> vec) {
    // TO-DO: Use a loop to compare the first and last characters with each other
    // HINT: You only need one loop to do this, and it can be a for or a while loop

    return true; // Returning a boolean value
}