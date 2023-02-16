FROM debian:buster
MAINTAINER abarrier
#ARG
ENV TERM=xterm-256color WP_DIR="/var/www/html/wordpress" WP_CFG="wp-config.php" WP_DB="wp_db" WP_TITLE="wp_title" WP_MANAGER_NAME="wp_manager_name" WP_MANAGER_PASSWORD="wp_manager_password" WP_MANAGER_EMAIL="wp_manager_email" WP_USR_NAME="wp_usr_name" WP_USR_PASSWORD="wp_usr_password" WP_USR_EMAIL="wp_usr_email" WP_USSR_DISP_NAME="wp_ussr_disp_name"
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="wordpress images for 42_inception"
VOLUME /var/www
RUN apt update -y && apt upgrade -y && apt install -y vim \
	curl \
	wget \
	mime-support \
	php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mysql \
	php-fpm \
	mariadb-client \
	&& rm -rf /var/lib/apt/lists/*
RUN 	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp
RUN	mkdir -p /var/www/html/wordpress \
	&& cd /var/www/html/wordpress \
	&& wp core download "https://wordpress.org/wordpress-5.2.17.tar.gz" --allow-root
COPY ["./conf/wp-config.php", "/var/www/html/wordpress"]
COPY ["./conf/config.sh", "./"]
#ADD
#WORKDIR
EXPOSE 9000
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

