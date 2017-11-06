#!/bin/sh

echo "Copying example docker-compose file to docker-compose.yml \c"

cp ./docker-compose.yml.example docker-compose.yml

echo "...done"

echo "Copying example apache2.conf file to docker-config-files/apache/apache2.conf \c"

cp ./docker-config-files/apache/apache2.conf.example ./docker-config-files/apache/apache2.conf

echo "...done"

echo "Copying example ports.conf file to docker-config-files/apache/ports.conf \c"

cp ./docker-config-files/apache/ports.conf.example ./docker-config-files/apache/ports.conf

echo "...done"

echo "Copying example php.ini file to docker-config-files/php/php.ini \c"

cp ./docker-config-files/php/php.ini.example ./docker-config-files/php/php.ini

echo "...done"

echo "Files copy complete, happy editing"