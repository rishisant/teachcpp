# FUNCTIONS: functions-tests.sh
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

echo "\n\n${YELLOW}Module 2: Functions Pt. 1\n${NC}Beginning Testing...\n"

# Compilation case
echo "${YELLOW}Program Compiles"
echo "${GREEN}Case Passed ${GREY}(+5)\n"
SCORE=$(($SCORE+5))

sleep 0.5 # Just to delay the program

# Ordered pt1
echo "${YELLOW}Ordered Vec Pt. 1${NC}"
min=1
max=5

if [ $(./driver -min -v1) -eq $min 2>/dev/null ] && [ $(./driver -max -v1) == $max 2>/dev/null ];
then 
    echo "${GREEN}Case Passed ${GREY}(+10)\n"
    SCORE=$(($SCORE+10))
else 
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

# Ordered pt2
echo "${YELLOW}Ordered Vec Pt. 2${NC}"
min=2
max=10
if [ $(./driver -min -v2) -eq $min 2>/dev/null ] && [ $(./driver -max -v2) == $max 2>/dev/null ];
then 
    echo "${GREEN}Case Passed ${GREY}(+10)\n"
    SCORE=$(($SCORE+10))
else 
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

# Unordered Pt1
echo "${YELLOW}Unordered Vec Pt. 1${NC}"
min=10
max=50
if [ $(./driver -min -v3) -eq $min 2>/dev/null ] && [ $(./driver -max -v3) == $max 2>/dev/null ];
then 
    echo "${GREEN}Case Passed ${GREY}(+20)\n"
    SCORE=$(($SCORE+20))
else 
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

# Unordered Pt2
echo "${YELLOW}Unordered Vec Pt. 2${NC}"
min=105
max=1003
if [ $(./driver -min -v4) -eq $min 2>/dev/null ] && [ $(./driver -max -v4) == $max 2>/dev/null ];
then 
    echo "${GREEN}Case Passed ${GREY}(+20)\n"
    SCORE=$(($SCORE+20))
else 
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

# Unordered & Negative Pt2
echo "${YELLOW}Unordered+Negative Vec Pt. 1${NC}"
min=-10
max=11
if [ $(./driver -min -v5) -eq $min 2>/dev/null ] && [ $(./driver -max -v5) == $max 2>/dev/null ];
then 
    echo "${GREEN}Case Passed ${GREY}(+20)\n"
    SCORE=$(($SCORE+20))
else 
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.25 # Just to delay the program

# print score and delete executable
echo "SCORE: ${SCORE}/85"
if [ $SCORE == 85 2>/dev/null ];
then
    echo "${GREEN}PERFECT SCORE!${NC}\n\n"
else
    echo "${RED}BETTER LUCK NEXT TIME!${NC}\n\n"
fi

make -s clean 

exit 0 