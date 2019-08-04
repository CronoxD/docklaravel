FROM composer

RUN set -ex \
    && apk --no-cache add \
    postgresql-dev

RUN docker-php-ext-install pdo pdo_pgsql

RUN mkdir /src
COPY ./src /src

WORKDIR /src
