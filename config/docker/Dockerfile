FROM php:7.2.1-apache
RUN set -ex \
    && docker-php-ext-install pdo pdo_mysql mysqli \
    && rm -rf /var/cache/apk/*


##Probably not required
RUN apt-get update && \
    apt-get install wget


## adding in composer
RUN wget http://getcomposer.org/composer.phar && mv composer.phar /usr/local/bin/composer

