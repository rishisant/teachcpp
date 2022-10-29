# FUNCTIONS: vector-tests.sh
# Do not touch this file. It is purely for the sake of testing the code.

# Clean files and make execs.
remake () {
    make -s clean
    make -s >/dev/null 2>&1
}

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
GREY="\033[1;37m"
NC='\033[0m'

SCORE=0

echo "\n\n${YELLOW}Module 1: Vectors\n${NC}Beginning Testing...\n"

# Compilation case
echo "${YELLOW}Program Compiles"
echo "${GREEN}Case Passed ${GREY}(+5)\n"
SCORE=$(($SCORE+5))

sleep 0.5 # Just to delay the program

# Empty Vec
# echo "$(./driver 5 -e)"
# echo "0\n1\n2\n3\n4\n5"
# [ "$(./driver 5 -e)" == "0
# 1
# 2
# 3
# 4
# 5" ]; echo "$?"

sleep 0.5 # Just to delay the program

echo "${YELLOW}Empty Vec & Small Range${NC}"
if [ "$(./driver 5 -e)" == "0
1
2
3
4
5" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

echo "${YELLOW}Empty Vec & Large Range${NC}"
if [ "$(./driver 100 -e)" == "0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Non-Empty Vec & Small Range${NC}"
if [ "$(./driver 5 -ne)" == "0
1
2
3
4
5" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Non-Empty Vec & Large Range${NC}"
if [ "$(./driver 100 -ne)" == "0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.25 # Just to delay the program

# print score and delete executable
echo "SCORE: ${SCORE}/65"
if [ $SCORE == 65 2>/dev/null ];
then
    echo "${GREEN}PERFECT SCORE!${NC}\n\n"
else
    echo "${RED}BETTER LUCK NEXT TIME!${NC}\n\n"
fi

make -s clean 

exit 0 