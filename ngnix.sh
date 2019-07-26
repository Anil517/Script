#!/bin/bash
sudo apt-get install nginx -y
cd  /var/www/html
sed ' s/nginx/PUC/g' index.nginx-debian.html > index.nginx-debian1.html && mv index.nginx-debian1.html index.nginx-
debian.html
