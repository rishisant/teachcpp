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

echo "\n\n${YELLOW}Module 2: Functions Pt. 2\n${NC}Beginning Testing...\n"

# Compilation case
echo "${YELLOW}Program Compiles"
echo "${GREEN}Case Passed ${GREY}(+10)\n"
SCORE=$(($SCORE+10))

sleep 0.5 # Just to delay the program

echo "${YELLOW}Vector Generation Pt. 1${NC}"
if [ $(./driver hello -vs) == "true" ];
then
    echo "${GREEN}Case Passed ${GREY}(+5)\n"
    SCORE=$(($SCORE+5))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

echo "${YELLOW}Vector Generation Pt. 2${NC}"
if [ $(./driver thisisareallylongstringsoifyougetthiscongratulationsjustkiddingitshouldbeeasy -vs) == "true" ];
then
    echo "${GREEN}Case Passed ${GREY}(+5)\n"
    SCORE=$(($SCORE+5))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5 # Just to delay the program

echo "${YELLOW}Vector Generation Pt. 3${NC}"
if [ $(./driver b -vs) == "true" ];
then
    echo "${GREEN}Case Passed ${GREY}(+5)\n"
    SCORE=$(($SCORE+5))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Palindrome Check Pt. 1${NC}"
if [ $(./driver racecar) == "true" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Palindrome Check Pt. 2${NC}"
if [ $(./driver n) == "true" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Palindrome Check Pt. 3${NC}"
if [ $(./driver thisisnottrue) == "false" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Palindrome Check Pt. 4${NC}"
if [ $(./driver alakazam) == "false" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5

echo "${YELLOW}Palindrome Check Pt. 5${NC}"
if [ $(./driver saippuakivikauppias) == "true" ];
then
    echo "${GREEN}Case Passed ${GREY}(+15)\n"
    SCORE=$(($SCORE+15))
else
    echo "${RED}Case Failed ${GREY}(+0)\n"
fi

sleep 0.5


sleep 0.25 # Just to delay the program

# print score and delete executable
echo "SCORE: ${SCORE}/100"
if [ $SCORE == 100 2>/dev/null ];
then
    echo "${GREEN}PERFECT SCORE!${NC}\n\n"
else
    echo "${RED}BETTER LUCK NEXT TIME!${NC}\n\n"
fi

make -s clean 

exit 0 