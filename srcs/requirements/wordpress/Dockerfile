FROM debian:buster
MAINTAINER abarrier
#ARG
ENV TERM=xterm-256color WP_DIR="/var/www/html/wordpress" WP_CFG="wp-config.php" WP_DB="wp_db" WP_DB_HOST="wp_db_host" WP_DB_HOST_PORT="3306" WP_TITLE="wp_title" WP_MANAGER_NAME="wp_manager_name" WP_MANAGER_PASSWORD="wp_manager_password" WP_MANAGER_EMAIL="wp_manager_email" WP_USR_NAME="wp_usr_name" WP_USR_PASSWORD="wp_usr_password" WP_USR_EMAIL="wp_usr_email" WP_USR_DISP_NAME="wp_usr_disp_name"
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="wordpress images for 42_inception"
VOLUME /var/www
RUN apt update -y && apt upgrade -y && apt install -y vim \
	curl \
	wget \
	procps \
	mime-support \
	php-common php-mysql php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mysql \
	php-fpm \
	mariadb-client \
	sendmail \
	&& rm -rf /var/lib/apt/lists/*
RUN 	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp
RUN	mkdir -p /var/www/html/wordpress \
	&& cd /var/www/html/wordpress \
	&& wp core download "https://wordpress.org/wordpress-5.2.17.tar.gz" --allow-root \
	&& chown -R root:root /var/www/html/wordpress
RUN	mkdir -p /run/php
COPY ["./conf/php.conf", "./etc/php/7.3/fpm/pool.d/www.conf"]
COPY ["./tools/config.sh", "./"]
#ADD
#WORKDIR
EXPOSE 9000
#STOPSIGNAL SIGQUIT
#USER
#ONBUILD
CMD ["ping", "localhost"]
#ENTRYPOINT ["/bin/sh", "-c", "./config.sh"]
