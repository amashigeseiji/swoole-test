FROM php:7.4-alpine

RUN set -ex \
  && apk add --no-cache --virtual build-dependencies build-base autoconf \
  && apk add --no-cache libstdc++ \
  && pecl install swoole \
  && docker-php-ext-enable swoole opcache \
  && apk del build-base build-dependencies autoconf
