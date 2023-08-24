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


# Use Debian:bullseye as the base image
FROM debian:bullseye

# Set environment variables for MySQL (adjust these according to your needs)
# ENV MYSQL_ROOT_PASSWORD=root_pass
# ENV MYSQL_DATABASE=wordpress_db
# ENV MYSQL_USER=wordpress_user
# ENV MYSQL_PASSWORD=wordpress_pass

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    mariadb-server \
    php \
    php-mysql \
    wordpress \
    supervisor \
    && rm -rf /var/lib/apt/lists/*

# Copy WordPress configuration file
COPY conf/default.php /etc/wordpress/

# Copy supervisor configuration file
COPY conf/default.php /etc/supervisor/conf.d/supervisord.conf

# Expose port 80 (default HTTP port for Apache)
EXPOSE 80

# Start supervisor to manage services
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]



# FROM debian:buster

# RUN apt-get update && \
#     apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php-zip curl mariadb-client

# RUN mkdir -p /var/run/ && mkdir -p /run/php/
# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# COPY conf/default.conf /etc/php/7.3/fpm/pool.d/www.conf

# COPY ./wp/wp_install.sh .
# RUN chmod 777 wp_install.sh
# ENTRYPOINT ["bash", "wp_install.sh"]
# CMD ["php-fpm7.3", "-F", "-R"]
