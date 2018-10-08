FROM php:7.0-apache

RUN apt-get update && apt-get upgrade -y && apt-get install -y git

RUN docker-php-ext-install -j$(nproc) pdo
RUN docker-php-ext-install -j$(nproc) pdo_mysql

WORKDIR  /var/www/html

RUN git clone https://github.com/trndlz/camagru.git camagru