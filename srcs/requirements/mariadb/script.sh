#!bin/bash
apt update -y
service mysql start
mysql -u root -e "CREATE DATABASE ${MYSQL_DATABASE};"
mysql -u root -e "GRANT ALL ON ${MYSQL_DATABASE}.* TO ${MYSQL_USER} IDENTIFIED BY '${MYSQL_PASSWORD}';"
chmod -R 777 /var/lib/mysql
#tail /dev/random
mysqld_safe --datadir='/var/lib/mysql/'