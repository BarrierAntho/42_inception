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

### FUNCTIONS ###
function	main()
{
	service mysql start;
	mysql -v -e "CREATE DATABASE wordpress ;";
	mysql -v -e "USE wordpress ;";
	mysql -v -e "GRANT ALL PRIVILEGES ON wordpress.* TO wordpressusername@locahost IDENTIFIED BY 'password' ;";
	mysql -v -e "FLUSH PRIVILEGES ;";

	return 0;
}

##############################
### PROGRAM START ###
clear && echo "Terminal cleared"
echo -e "${YE}Program \"${PROGRAM}\" start${NC}"
#EXIT_VAL=$(main)
#echo "RESULT: $?"
main
echo -e "${YE}Program \"${PROGRAM}\" end${NC}"
#exit ${EXIT_VAL}
#exit 0
### PROGRAM END ###
