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
