FROM debian:bullseye

EXPOSE 3306

ARG DB_NAME=${DB_NAME}
ARG DB_USER=${DB_USER}
ARG DB_PASSWORD=${DB_PASSWORD}
ARG DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}

RUN apt-get update && apt-get install \
	mariadb-server -y && \
	mysql_install_db --user=mysql --datadir=/var/lib/mysql && \
	rm -rf /var/lib/apt/lists/*

# RUN mkdir -p /var/run/mysql
# RUN chown -R mysql:mysql /var/run/mysql
# RUN chmod 777 /var/run/mysql
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d

# RUN service mariadb start
# RUN sleep 8
COPY tools/create_user.sh /
# RUN  mysql -u root -e "CREATE DATABASE ${DB_NAME};" && \
#     # Create a user and grant privileges
#     mysql -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" && \
#     mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';" && \
#     mysql -u root -e "FLUSH PRIVILEGES;" && \
#     # Change the root password
#     mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';" && \
#     # Stop the MariaDB service
#     service mariadb stop

# RUN rm -rf create_user.sh
# CMD ["mysqld_safe"]
# CMD ["sleep", "infinity"]
CMD ["bash", "create_user.sh"]