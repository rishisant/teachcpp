# Module 2: Functions Pt. 1

### Description
Module 2 employs your knowledge through testing your ability to code and debug functions. You are given a vector, and your goal is to obtain the minimum and maximum element of the vector.

### Proposed Solution
There are two potential ways to iterate through a vector in C++. You can either: use the built in vector iterator to directly access values _or_ access the vector indices individually. 

### Solution with Code
The first way uses the built-in vector iterator. 
```cpp
int min_elem(vector<int> vec) {
    int min = vec[0]; // Declare min value as the first element of the vector
    for (int val : vec) { // Using built in vector iterator
        if (val < min) min = val; 
        // If the current value is less than the current minimum, change min
    }
    return min;
}
```
The second way uses the manual index-accessing method. 
```cpp
int max_elem(vector<int> vec) {
    int max = vec[0]; // Declare max value as the first element of the vector
    for (size_t i = 0; i < vec.size(); i++) {
        if (vec[i] > max) max = vec[i];
        // If the current value is greater than the current maximum, change max
    }
    return max;
}
```