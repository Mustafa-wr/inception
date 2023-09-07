FROM debian:buster

EXPOSE 3306

ARG DB_NAME=${DB_NAME}
ARG DB_USER=${DB_USER}
ARG DB_PASSWORD=${DB_PASSWORD}
ARG DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}

RUN apt-get update && apt-get install \
	mariadb-server -y && \
	rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install mariadb-server -y
RUN rm -rf /var/lib/apt/lists/*


RUN apt-get update && apt-get install -y mariadb-client


# RUN rm /etc/mysql/mariadb.conf.d/c.cnf
COPY c.cnf /etc/mysql/mariadb.conf.d

COPY entrypoint.sh .
RUN chmod +x ./entrypoint.sh
RUN bash ./entrypoint.sh

RUN rm -rf entrypoint.sh

CMD ["mysqld_safe"]

