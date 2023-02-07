FROM debian:buster
MAINTAINER abarrier
#ARG
#ENV
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="wordpress images for 42_inception"
#VOLUME /var/www
RUN apt update -y && apt upgrade -y && apt install -y vim \
	curl \
	wget \
	gcc \
	pkg-config \
	make \
	libxml2-dev \
	sqlite3 \
	libsqlite3-dev \
	zlib1g \
	zlib1g-dev \
	php-cgi \
	&& rm -rf /var/lib/apt/lists/*
RUN echo "test"
#COPY
ADD ["https://www.php.net/distributions/php-8.2.2.tar.gz", "./"]
#WORKDIR
#EXPOSE 12345
#STOPSIGNAL SIGQUIT
#USER
#ONBUILD
CMD ["ping", "localhost"]
#ENTRYPOINT
