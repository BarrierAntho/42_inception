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
	return 0;
}

#######################################################
# DEPRICATED PHP_FPM INSTALLATION
function	php_fpm()
{
	tar xvf php-8.2.2.tar.gz
	cd php-8.2.2
	./configure "--enable-fpm" "--with-mysqli"
	make
	make install
	cp "php.ini-development" "/usr/local/php/php.ini"
	cp "/usr/local/etc/php-fpm.d/www.conf.default" "/usr/local/etc/php-fpm.conf"
	cp "sapi/fpm/php-fpm" "/usr/local/bin"
	sed -i 's/\;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' "/usr/local/php/php.ini"
	sed -i 's/user = nobody/user = www-data/g' "/usr/local/etc/php-fpm.conf"
	sed -i 's/group = nobody/group = www-data/g' "/usr/local/etc/php-fpm.conf"
	/usr/local/bin/php-fpm
#	ping localhost
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
exit 0
### PROGRAM END ###
