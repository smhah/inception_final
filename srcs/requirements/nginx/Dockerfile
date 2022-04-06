From debian:buster

#installing necessary packages
RUN  apt-get update -y
RUN apt install wget -y
RUN apt install vim -y
#installing nginx
RUN apt-get install nginx -y
#copying necessary files
COPY /script.sh /
COPY /wordpress.conf /etc/nginx/sites-available/
RUN rm /etc/nginx/sites-available/default
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/
#config ssl and launch nginx at the background
CMD sh /script.sh

