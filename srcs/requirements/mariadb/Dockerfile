FROM debian:buster
MAINTAINER abarrier
#ARG
ENV TERM=xterm-256color MYSQL_ROOT_PASSWORD="" WP_DB="wp_db" WP_MANAGER_NAME="wp_manager_name" WP_MANAGER_PASSWORD=""
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="mariadb images for 42_inception"
VOLUME /var/lib/mysql/
RUN	apt update -y && apt upgrade -y && apt install -y vim \
	procps \
	mariadb-server \
	expect \
	&& rm -rf /var/lib/apt/lists/*
COPY ["./conf/50-server.cnf", "./etc/mysql/mariadb.conf.d/"]
COPY ["./tools/config.sh", "./"]
#ADD
#WORKDIR
EXPOSE 3306
#STOPSIGNAL SIGQUIT
#USER
#ONBUILD
#CMD ["ping", "localhost"]
ENTRYPOINT ["/bin/sh", "-c", "./config.sh"]
