ARG base=debian

ARG version=13.4-slim
FROM $base:$version

RUN apt update && apt install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 9000 443

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]
