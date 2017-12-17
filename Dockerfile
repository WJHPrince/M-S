RUN echo 'Building controlling node'

FROM ubuntu:16.04

MAINTAINER wprince

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y

WORKDIR /etc/nginx


