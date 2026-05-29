ARG base=php

ARG version=8.4-fpm-bookworm

FROM $base:$version

RUN apt update && apt install -y \
    && docker-php-ext-install mysqli \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 9000

EXPOSE 3306
