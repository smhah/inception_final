#!bin/bash
#mysql -e " ALTER USER 'root'@'localhost' IDENTIFIED BY 'smhah123';"

if [ ! -d "/var/lib/mysql/mydatabase" ]; then
    service mysql start
    sleep 5
    mysql -u root -e  "CREATE DATABASE IF NOT EXISTS mydatabase; flush privileges;"
    mysql -u root -e "use mydatabase; grant all privileges on *.* to '${MYSQL_USER} IDENTIFIED BY '${MYSQL_PASSWORD}'; flush privileges;"
    #---------
    mysql -u root -e  "CREATE USER '${MYSQL_SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${MYSQL_SECOND_PASSWORD}'; flush privileges;"
    mysql -u root -e "use mydatabase; grant all privileges on mydatabase.* to '${SECOND_USER}'@'%.%.%.%' IDENTIFIED BY '${MYSQL_SECOND_PASSWORD}'; flush privileges;"
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'smhah123'; flush privileges;"
fi
rm /var/lib/mysql/ib_logfile*
exec mysqld_safe --datadir='/var/lib/mysql/'
