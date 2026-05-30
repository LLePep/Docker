ARG base=debian

ARG version=bookworm

FROM $base:$version

RUN apt update && apt install -y \
    mariadb-client \
    mariadb-server \
    galera-4 \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/log/mysql && chow mysql:mysql /var/log/mysql

EXPOSE 3306

ENTRYPOINT [ "mysqld" ]

CMD ["--user=mysql", "--console"]
