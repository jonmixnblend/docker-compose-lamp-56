# Docker Compose php 5.6.3, Apache, MySQL, phpmyadmin

A docker compose manifest for a stack running php 5.6.3, Apache, and MySQL, with phpmyadmin, for quick and easy testing trying out of applications with these requirements.

This is just a skeleton docker compose manifest that I use a lot on a Mac running Docker Tools.

## Setup

First run copyfiles.sh. Edit the newly created docker-compose.yml, changing anything you would like, including adding any self generated ssl keys to the 
relevant volumes entries under the apache service entry.

Then edit docker-config-files/php/php.ini to taste. 

Next edit docker-config-files/apache/apache2.conf to taste.

Dump all files you would like in your web root.

Add any virtual hosts to docker-config-files/apache/sites-enabled, specifying the development domain names for each vhost and any other parameters you would like to.

Edit your /etc/hosts file on your machine to point the relevant development domain names at the docker machine ip address.

As far as MYSQL goes, there is only one database that is created initially, but that can quickly be changed, through say phpmyadmin as all data is stored in the folder .data/db, created off this directory.

phpmyadmin is available at the machines ip on port 8080. The password and root password as well as the db that is to be used can be set in docker-compose.yml
