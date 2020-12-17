
ARG PHP_IMAGE=8.0.0-fpm-alpine3.12
FROM php:${PHP_IMAGE}

EXPOSE 8000

COPY build/php/php.ini /usr/local/etc/php/conf.d/
COPY src /var/www/html

COPY build/php/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN apk add --no-cache \
		libzip-dev \
		zlib-dev \
	&& docker-php-ext-configure zip \
	&& docker-php-ext-install -j$(getconf _NPROCESSORS_ONLN) pdo pdo_mysql mysqli opcache zip \
    && chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html
USER www-data

ENTRYPOINT ["entrypoint.sh"]
CMD ["php", "-S", "0.0.0.0:8000"]
