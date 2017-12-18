FROM ubuntu:16.04

RUN echo "Building up Master node"

MAINTAINER wprince

RUN apt-get update && apt-get install -y apt-utils && apt-get upgrade -y

RUN sleep 3

RUN apt-get install nginx -y

# Remove the default Nginx configuration file
#RUN rm -v /etc/nginx/nginx.conf
# Copy a configuration file from the current directory
#ADD nginx.conf /etc/nginx/
# Append "daemon off;" to the beginning of the configuration
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf
# Expose ports
EXPOSE 80
# Set the default command to execute
# when creating a new container
RUN service nginx start

RUN systemctl status nginx.service

RUN sleep 5

WORKDIR /etc/nginx

CMD echo "Setting up complete"
