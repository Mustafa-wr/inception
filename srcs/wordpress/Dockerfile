# # # Use Debian:bullseye as the base image
# # FROM debian:bullseye

# # # Set environment variables for MySQL (adjust these according to your needs)
# # # ENV MYSQL_ROOT_PASSWORD=root_pass
# # # ENV MYSQL_DATABASE=wordpress_db
# # # ENV MYSQL_USER=wordpress_user
# # # ENV MYSQL_PASSWORD=wordpress_pass

# # # Update and install necessary packages
# # RUN apt-get update && \
# #     apt-get install -y \
# #     apache2 \
# #     mariadb-server \
# #     php \
# #     php-mysql \
# #     wordpress \
# #     && rm -rf /var/lib/apt/lists/*

# # # Copy WordPress configuration file
# # COPY conf/default.php /etc/wordpress/

# # # Expose port 9000
# # EXPOSE 9000

# # # Start services
# # CMD service mysql start && apache2ctl -D FOREGROUND




											#last thinnnnnngnggggggg
# Use Debian:bullseye as the base image
# FROM debian:bullseye

# # Set environment variables for MySQL (adjust these according to your needs)
# # ENV MYSQL_ROOT_PASSWORD=root_pass
# # ENV MYSQL_DATABASE=wordpress_db
# # ENV MYSQL_USER=wordpress_user
# # ENV MYSQL_PASSWORD=wordpress_pass

# # Update and install necessary packages
# RUN apt-get update && \
#     apt-get install -y \
#     mariadb-server \
#     php \
#     php-mysql \
#     wordpress \
#     supervisor \
#     && rm -rf /var/lib/apt/lists/*

# # Copy WordPress configuration file
# COPY conf/default.php /etc/wordpress/

# # Copy supervisor configuration file
# COPY conf/default.php /etc/supervisor/conf.d/supervisord.conf

# # Expose port 80 (default HTTP port for Apache)
# EXPOSE 80

# # Start supervisor to manage services
# CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

# FROM debian:bullseye

# Expose 9000

# RUN apt-get update && apt-get install -y \
# 	php7.4-fpm \
# 	php7.4-mysql \
# 	mariadb-client \
# 	curl && \
# 	rm -rf /var/lib/apt/lists/*

# RUN mkdir -p /var/run/ && mkdir -p /run/php/
# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
# COPY ./conf/config.sh .

# COPY ./conf /var/www/html
# # COPY ./conf/default.conf /var/www/html
# # COPY ./conf/wp-config.php /var/www/html/wp-config.php
# RUN chmod 777 config.sh
# ENTRYPOINT ["bash", "config.sh"]
# CMD ["php-fpm7.4", "-F", "-R"]

# FROM debian:bullseye

# EXPOSE 9000

# RUN apt-get update && apt-get install -y \
# 	php7.4-fpm \
# 	php7.4-mysql \
# 	mariadb-client \
# 	curl && \
# 	rm -rf /var/lib/apt/lists/*

# COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

# ADD https://wordpress.org/latest.tar.gz /var/www/latest.tar.gz

# RUN cd /var/www && tar -xvf latest.tar.gz && \
# 	rm -rf latest.tar.gz

# # RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp --silent

# # RUN chmod +x ./usr/bin/wp

# # RUN cp ./usr/bin/wp/wp-cli.phar /usr/local/bin/wp

# RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp && \
#     chmod +x /usr/local/bin/wp

# RUN mkdir /run/php

# COPY ./conf/wp-config.php /var/www/wordpress/wp-config.php

# COPY ./conf/config.sh /var/www/wordpress/config.sh
# RUN chmod +x /var/www/wordpress/config.sh
# USER root 

# CMD ["bash", "/var/www/wordpress/config.sh"]


FROM debian:bullseye

EXPOSE 9000

RUN apt-get update && apt-get install -y \
	php7.4-fpm \
	php7.4-mysql \
	mariadb-client \
	curl && \
	rm -rf /var/lib/apt/lists/*

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

ADD https://wordpress.org/latest.tar.gz /var/www/latest.tar.gz

RUN cd /var/www && tar -xvf latest.tar.gz && \
	rm -rf latest.tar.gz

USER root

# Install wp-cli as root
RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp && \
    chmod +x /usr/local/bin/wp

RUN mkdir /run/php

COPY ./conf/wp-config.php /var/www/wordpress/wp-config.php

COPY ./conf/config.sh /var/www/wordpress/config.sh
RUN chmod +x /var/www/wordpress/config.sh

ENTRYPOINT ["bash", "/var/www/wordpress/config.sh"]



