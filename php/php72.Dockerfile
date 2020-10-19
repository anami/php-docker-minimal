FROM php:7.2.7-fpm-alpine3.7
RUN apk update; \
    apk upgrade;
RUN apk add --update libbz2 bzip2-dev libzip-dev
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install bz2
RUN docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql
