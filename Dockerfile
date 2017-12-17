FROM ubuntu:16.04

RUN echo "Building up Master node"

MAINTAINER wprince

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y

WORKDIR /etc/nginx


