FROM php:5.6.6-apache

# PHP extensions come first, as they are less likely to change between Yii releases
RUN apt-get update \
    && apt-get -y install \
            git \
            g++ \
            libicu-dev \
            libmcrypt-dev \
            zlib1g-dev \
        --no-install-recommends \

    # Enable mod_rewrite
    && a2enmod rewrite \

    # Install PHP extensions
    && docker-php-ext-install intl \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install zip \
    && pecl install apcu-beta && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini \

    && apt-get purge -y g++ \
    && apt-get autoremove -y \
    && rm -r /var/lib/apt/lists/* \

    # Fix write permissions with shared folders
    && usermod -u 1000 www-data

# Apache config and composer wrapper
COPY apache2.conf /etc/apache2/apache2.conf

WORKDIR /var/www/html
