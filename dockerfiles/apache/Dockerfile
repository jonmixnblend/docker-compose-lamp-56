FROM php:5.6.32-apache

## Install Mysql Support
RUN docker-php-ext-install pdo pdo_mysql

## Install libfreetype, mcrypt, gd with freetype support
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

## Install Redis and Xdebug
RUN pecl install redis-3.1.0 \
    && pecl install xdebug-2.5.0 \
    && docker-php-ext-enable redis xdebug

## Install Memcached
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
    && pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached

## Enable SSL
RUN a2enmod ssl

# Enable Mod Rewrite
RUN a2enmod rewrite

# User mod the users so they run under the correct permissions.
RUN usermod -u 1000 www-data
RUN usermod -G staff www-data