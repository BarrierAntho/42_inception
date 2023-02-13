#!/bin/bash

##############################
### GLOBAL CONSTANT ###
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

##############################
### FUNCTIONS ###
function	exec_mysql_secure_install()
{
	echo -e "${YE}${SEP_SP}${NC}";
	echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";
	local SECURE_MYSQL=$(expect -c "
		set timeout 10
		spawn mysql_secure_installation
		expect \"Enter current password for root (enter for none):\"
		send \"test\r\"
		expect \"Change the root password?\"
		send \"n\r\"
		expect \"Remove anonymous users?\"
		send \"y\r\"
		expect \"Disallow root login remotely?\"
		send \"y\r\"
		expect \"Remove test database and access to it?\"
		send \"y\r\"
		expect \"Reload privilege tables now?\"
		send \"y\r\"
		expect eof
	");
	if [ "$?" != 0 ];
	then
		echo -e "${RD}Error: mysql_secure_installation${NC}";
		echo -e "${YE}${SEP_SP}${NC}";
		return 1;
	fi;
	echo "$SECURE_MYSQL";
	return 0;
}

function	create_wp_db()
{
	echo -e "${YE}${SEP_SP}${NC}";
	echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";
	mysql -v -e "CREATE DATABASE IF NOT EXISTS wordpress ;";
	mysql -v -e "USE wordpress ;";
	mysql -v -e "GRANT ALL PRIVILEGES ON wordpress.* TO wordpressusername@locahost IDENTIFIED BY 'password' ;";
	mysql -v -e "FLUSH PRIVILEGES ;";
	if [ "$?" != 0 ];
	then
		echo -e "${RD}Error: mysql create database${NC}";
		echo -e "${YE}${SEP_SP}${NC}";
		return 1;
	fi;
	return 0;
}

function	main()
{
	echo -e "${YE}${SEP_SP}${NC}";
	echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";
	# START MYSQL SERVICE
	service mysql start;
	if [ "$?" != 0 ]; then return 1; fi;
	# EXECUTE MYSQL SECURE INSTALLATION
	exec_mysql_secure_install;
	if [ "$?" != 0 ]; then return 1; fi;
	# CREATE WORDPRESS DATABASE
	create_wp_db;
	if [ "$?" != 0 ]; then return 1; fi;
	# EXECUTE MYSQLD PROGRAM
	exec mysqld_safe /var/lib/mysql;
	if [ "$?" != 0 ]; then return 1; fi;
	return 0;
}

##############################
### PROGRAM START ###
clear;
echo -e "${YE}${SEP_SP}${NC}";
echo -e "${YE}Program \"${PROGRAM}\"${NC}"
main
exit $?;
### PROGRAM END ###
