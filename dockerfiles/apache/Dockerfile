FROM php:7.0.25-apache

# Install lib xml
RUN apt-get update && apt-get install -y \
        libxml2-dev \
        libxslt1-dev \
        zlib1g-dev \
        libicu-dev \
        g++

# Install intl
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

## Install Mysql Support
RUN docker-php-ext-install pdo pdo_mysql xsl soap zip

## Install libfreetype, mcrypt, gd with freetype support
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd


# Enable Mod Rewrite
RUN a2enmod rewrite

# User mod the users so they run under the correct permissions.
RUN usermod -u 1000 www-data
RUN usermod -G staff www-data