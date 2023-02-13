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
	mariadb-client \
	mime-support php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline \
	&& rm -rf /var/lib/apt/lists/*
#RUN wget "https://wordpress.org/wordpress-6.1.1.tar.gz" && tar -xzvf "wordpress-6.1.1.tar.gz"
#COPY
#ADD ["https://wordpress.org/wordpress-6.1.1.tar.gz", "./"]
#WORKDIR
#EXPOSE 12345
#STOPSIGNAL SIGQUIT
#USER
#ONBUILD
CMD ["ping", "localhost"]
#ENTRYPOINT


###############################
# DEPRICATED PHP-FPM INSTALLATION
# MORE THAN 8 MINUTES TO COMPILE, BUILD AND EXEC PHP-FPM
#RUN apt update -y && apt upgrade -y && apt install -y vim \
#	curl \
#	wget \
#	gcc \
#	pkg-config \
#	make \
#	libxml2-dev \
#	sqlite3 \
#	libsqlite3-dev \
#	zlib1g \
#	zlib1g-dev \
#	php-cgi \
#	&& rm -rf /var/lib/apt/lists/*

