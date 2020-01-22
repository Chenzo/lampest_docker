FROM php:7.2.1-apache
RUN set -ex \
    && docker-php-ext-install pdo pdo_mysql mysqli \
    && rm -rf /var/cache/apk/*
