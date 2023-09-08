FROM debian:bullseye

EXPOSE 3306

ARG DB_NAME=${WP_DATABASE}
ARG DB_USER=${WP_MDB_USER}
ARG DB_PASSWORD=${WP_MDB_PASSWORD}
ARG DB_ROOT_PASSWORD=${WP_ADMIN_PASSWORD}

RUN apt-get update && apt-get install \
	mariadb-server -y && \
	mysql_install_db --user=mysql --datadir=/var/lib/mysql -y && \
	rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/mysql
RUN chown -R mysql:mysql /var/run/mysql
RUN chmod 777 /var/run/mysql
# RUN rm /etc/mysql/mariadb.conf.d/my.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/create_user.sh /
# RUN service mariadb start
RUN bash create_user.sh
RUN echo ${DB_PASSWORD}
# RUN rm -rf create_user.sh
CMD ["mysqld_safe"]
# CMD ["sleep", "infinity"]
# CMD ["bash", "create_user.sh"]
# CMD ["/bin/bash"]