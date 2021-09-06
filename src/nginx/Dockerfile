FROM nginx

MAINTAINER Nukool Muangsoon (nukoolmuangsoon@gmail.com) 
LABEL Description="Nginx  Build Container"

ADD default.conf /etc/nginx/conf.d/default.conf

COPY ./fe.html /usr/share/nginx/html/

EXPOSE 80

