ARG base=debian

ARG version=bookworm

FROM $base:$version

RUN apt update && apt install -y \
    mariadb-client \
    mariadb-server \
    galera-4 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 3306

ENTRYPOINT [ "mysqld" ]

CMD ["--user=mysql", "--console"]
