# FROM debian:bullseye

# ARG DB_NAME=${DB_NAME}
# ARG DB_USER=${DB_USER}
# ARG DB_PASSWORD=${DB_PASSWORD}
# ARG DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}
# USER root

# RUN apt-get update && apt-get install \
# 	mariadb-server -y && \
# 	mysql_install_db --user=mysql --datadir=/var/lib/mysql -y && \
# 	rm -rf /var/lib/apt/lists/*

# RUN mkdir -p /var/run/mysql
# RUN chown -R mysql:mysql /var/run/mysql
# RUN chmod 777 /var/run/mysql
# # RUN rm /etc/mysql/mariadb.conf.d/my.cnf
# COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# COPY tools/create_user.sh /
# # RUN service mariadb start
# RUN bash /create_user.sh

# # RUN rm -rf create_user.sh
# EXPOSE 3306
# # RUN rm -rf create_user.sh
# # CMD ["bash", "/tmp/create_user.sh"]
# CMD ["mysqld", "--skip-log-error"]
# # CMD ["sleep", "infinity"]
# # CMD ["bash", "create_user.sh"]
# # CMD ["/bin/bash"] DB_PASSWORD

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
# RUN rm /etc/mysql/mariadb.conf.d/my.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the create_user.sh script, but do not execute it here

EXPOSE 3306

# Instead, set up an entrypoint script that will run when the container starts
COPY tools/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY tools/create_user.sh /
RUN chmod +x /create_user.sh

# Use the entrypoint script to start MariaDB and run create_user.sh
CMD ["/entrypoint.sh"]
