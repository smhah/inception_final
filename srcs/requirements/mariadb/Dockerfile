From debian:buster

#installing necessary packages
RUN  apt-get update -y
RUN apt install vim -y
#copying necessary files
COPY /script.sh /
#installing mariadb
RUN apt install mariadb-server -y
RUN apt install mariadb-client -y
RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY /50-server.cnf /etc/mysql/mariadb.conf.d/
#setuping database and let the container running
CMD sh /script.sh

