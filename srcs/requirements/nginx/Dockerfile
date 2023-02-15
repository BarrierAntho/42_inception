FROM debian:buster
MAINTAINER abarrier
#ARG
#ENV
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="nginx images for 42_inception"
#VOLUME /var/www
RUN apt update -y && apt upgrade -y && apt install -y vim \
	curl \
	wget \
	nginx \
	openssl \
	&& rm -rf /var/lib/apt/lists/*
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/inception_selfsigned.key -out /etc/ssl/certs/inception_selfsigned.crt -subj "/C=FR/ST=PARIS/L=PARIS/O=42.PARIS/OU=42.STUD/CN=42.PARIS/emailAddress=abarrier@student.42.fr"
RUN mkdir -p /data/ && mkdir -p /data/www /data/images
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
#WORKDIR
EXPOSE 443
STOPSIGNAL SIGQUIT
#USER
#ONBUILD
CMD ["nginx","-g","daemon off;"]
#ENTRYPOINT
