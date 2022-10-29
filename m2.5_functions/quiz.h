/*
FUNCTIONS: quiz.h
Do not touch this file. It is purely for the sake of pre-defining the functions.
*/

#pragma once
#ifndef QUIZ_H
#define QUIZ_H

#include <iostream>
#include <vector>
#include <string.h>

using std::cout, std::endl, std::vector, std::string;

vector<char> to_char_vector(string& str);

bool is_palindrome(vector<char> vec);

#endif