
FROM debian:bullseye

ARG DB_NAME=${DB_NAME}
ARG DB_USER=${DB_USER}
ARG DB_PASSWORD=${DB_PASSWORD}
ARG DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}
USER root

RUN apt-get update && apt-get install \
    mariadb-server -y && \
    mysql_install_db --user=mysql --datadir=/var/lib/mysql -y && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/mysql
RUN chown -R mysql:mysql /var/run/mysql
RUN chmod 777 /var/run/mysql

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf


EXPOSE 3306

COPY tools/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY tools/create_user.sh /
RUN chmod +x /create_user.sh

CMD ["/entrypoint.sh"]
