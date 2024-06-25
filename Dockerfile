FROM php:8.2-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql
COPY . /var/www/html
RUN pecl install redis && docker-php-ext-enable redis
COPY ./php.ini /usr/local/etc/php/php.ini
RUN chown -R www-data:www-data /var/www/html/
EXPOSE 80
