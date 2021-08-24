FROM bash

WORKDIR /app

RUN chmod 711 /app

ADD . .

ENTRYPOINT ["bash","run.sh"]

RUN adduser -H -D student -s /sbin/nologin

USER student
