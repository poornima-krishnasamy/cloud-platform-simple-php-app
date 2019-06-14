FROM php:7.3-apache

COPY . /app
COPY ./vhosts.conf /etc/apache2/sites-available/000-default.conf

COPY ./ports.conf /etc/apache2/ports.conf

RUN adduser --disabled-password php -u 1001 --quiet && \
    chown -R php:php /app

RUN chown -R 1001:1001 /app/public \
    && a2enmod rewrite

USER  1001
