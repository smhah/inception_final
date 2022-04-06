From debian:buster

#installing necessary packages
RUN  apt-get update -y
RUN apt install php-cli php-fpm php-mysql php-json php-opcache php-mbstring php-xml php-gd php-curl -y
RUN apt install wget -y
RUN apt install vim -y

#installing wordpress
#RUN chown -R www-data:www-data wordpress
#RUN chmod -R 755 wordpress
#copying phpfpm config
run rm -rf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./www.conf /etc/php/7.3/fpm/pool.d/
COPY ./script.sh .
CMD sh script.sh
