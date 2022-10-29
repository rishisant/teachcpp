# Module 2: Functions Pt. 2

### Description
Module 2 employs your knowledge through testing your ability to code and debug functions. You are given a string and you must create a vector of chars and then return a boolean value. Return 'true' if the string is a palindrome, and 'false' otherwise.

### Proposed Solution
We only need one loop each for both function.

### Solution with Code
Here is the implementation for the vectorizing function.
```cpp
vector<char> to_char_vector(string& str) {
    vector<char> res;

    for (size_t i = 0; i < str.length(); i++) {
        res.push_back((char)str[i]);
    }

    return res;
}
```

Here are two implementations of the palindrome function, using `for (size_t i)`:
```cpp
bool is_palindrome(vector<char> vec) {
    size_t n = vec.size() - 1;
    for (size_t i = 0; i < vec.size(); i++) {
        if (vec[i] != vec[n]) return false;
        n--;
    }
    return true;
}
```

And using `while (i && n)`:
```cpp
bool is_palindrome(vector<char> vec) {
    size_t i = 0, n = vec.size() - 1;
    while (i != vec.size() && n >= 0) {
        if (vec[i] != vec[n]) return false;
        i++; n--;
    }
    return true;
}
```