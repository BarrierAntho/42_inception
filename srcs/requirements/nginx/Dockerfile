FROM debian:buster
MAINTAINER abarrier
#ARG
ENV TERM=xterm-256color
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="nginx images for 42_inception"
#VOLUME
RUN apt update -y && apt upgrade -y && apt install -y vim \
	nginx \
	openssl \
	&& rm -rf /var/lib/apt/lists/*
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
COPY ["./conf/nginx.conf", "/etc/nginx/nginx.conf"]
COPY ["./conf/abarrier.42.fr.conf", "/etc/nginx/sites-available"]
COPY ["./tools/config.sh", "./"]
#WORKDIR
EXPOSE 443
#STOPSIGNAL SIGQUIT
#USER
#ONBUILD
#CMD ["ping", "localhost"]
ENTRYPOINT ["/bin/sh", "-c", "./config.sh"]
