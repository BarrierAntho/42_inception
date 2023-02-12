#!/bin/bash

SEP_P="####################"
SEP_SP="--------------------"

RD='\033[0;31m'
GN='\033[0;32m'
YE='\033[0;33m'
BU='\033[0;34m'
MG='\033[0;35m'
NC='\033[0m'

##############################
### GLOBAL VARIABLE ###
PROGRAM=${0}
EXIT_VAL=0

##############################

### GLOBAL VARIABLE ###
function	main()
{
	return 0;
}

### PROGRAM START ###
clear && echo "Terminal cleared"
echo -e "${YE}Program \"${PROGRAM}\" start${NC}"
EXIT_VAL=$(main)
echo "RESULT: $?"
echo -e "${YE}Program \"${PROGRAM}\" end${NC}"
exit ${EXIT_VAL}
### PROGRAM END ###
