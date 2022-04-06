#!bin/bash
apt install -y openssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=MA/ST=rhamna/L=Benguerir/O=1337/CN=localhost' -keyout /root/localhost.key -out /root/localhost.crt
nginx -g 'daemon off;'

