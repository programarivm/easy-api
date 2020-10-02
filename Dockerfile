FROM php:7.3-fpm

RUN apt-get update && apt-get install -y \
    git

RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

RUN pecl install mailparse
