FROM php:5.6-apache

#COPY config/php.ini /usr/local/etc/php
#ADD docker/frontend.local.conf /etc/apache2/sites-enabled/000-default.conf
#ADD docker/backend.local.conf /etc/apache2/sites-enabled/000-default.conf
#ADD docker/hosts /etc/hosts

# Install modules
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install iconv mcrypt \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
#CMD ["php"]