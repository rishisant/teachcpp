CXX=g++
CXXFLAGS=-std=c++17 -g -pedantic -Wall -Wextra -fsanitize=address,undefined -fno-omit-frame-pointer
LDLIBS=

SRCS=driver.cpp
DEPS=quiz.cpp
BINS=$(SRCS:%.cpp=%.exe)
OBJS=$(DEPS:%.cpp=%.o)


all: clean $(BINS)

%.o: %.cpp %.h
	$(CXX) $(CXXFLAGS) -c -o $@ $<

%.exe: %.cpp $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(patsubst %.exe,%,$@) $^ $(LDLIBS)

.PHONY: clean test

clean:
	rm -f driver 

test: all
	chmod u+x functions-tests.sh
	./functions-tests.sh