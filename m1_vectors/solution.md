# Module 2: Functions Pt. 1

### Description
Module 1 employs your knowledge through testing your ability to code and debug functions. You are given a vector and a range, and your goal is to empty that vector (if not already empty) and fill it with values from 0 to the range, inclusive.

### Proposed Solution
We can use two loops. A while loop and a for loop will be used in order to attempt this problem.

### Solution with Code
There are two ways to empty the vector; first, we can use the built in function `vec.empty()`:
```
cpp
void populate_vector(vector<int>& blank, int range) {
    while (!blank.empty()) blank.pop_back(); // While the vector is not empty, we will pop all elements

    for (int i = 0; i <= range; ++i) { // Make sure it is inclusive of the range
        blank.push_back(i); // Use the push_back() function to push a value to the vector.
    }

    return; // No return is needed because this is a void function.
}
```

The other way would be to use `vec.size()`:
```
cpp
void populate_vector(vector<int>& blank, int range) {
    while (blank.size() > 0) blank.pop_back(); // While the vector has a size > 0, we pop the elements.

    for (int i = 0; i <= range; ++i) { // Make sure it is inclusive of the range
        blank.push_back(i); // Use the push_back() function to push a value to the vector.
    }

    return; // No return is needed because this is a void function.
}
```