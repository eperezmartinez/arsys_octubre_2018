FROM ubuntu:18.10
MAiNTAINER eperez@arsys.es

RUN useradd elena

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello Arsys!!</marquee>' \
        > /var/www/html/index.html

RUN apt-get update

EXPOSE 80

ENV DATABASE_IP 192.167.2.9

RUN usermod -aG sudo elena

USER elena

VOLUME ["/my-data"]