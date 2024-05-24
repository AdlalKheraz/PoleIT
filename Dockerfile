FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

ENV DB_HOST=mysql
ENV DB_USER=root
ENV DB_PASSWORD=root
ENV DB_NAME=blog

COPY . /var/www/html

RUN chown -R www-data:www-data /var/www/html/

EXPOSE 80
