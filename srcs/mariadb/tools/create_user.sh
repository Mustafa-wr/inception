# #!/bin/bash
# # sleep infinity
# service mariadb start

# mysql -u root -e "CREATE DATABASE ${DB_NAME};"
# mysql -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
# mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
# mysql -u root -e "FLUSH PRIVILEGES;"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"

# mysqld_safe




#!/bin/bash
# Start MariaDB
service mariadb start

# Wait for MariaDB to start
until mysqladmin ping &>/dev/null; do
    echo "Waiting for MariaDB to start..."
    sleep 2
done


# Create the database
mysql -u root -p"root_password" -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"

# Create the user and grant privileges, password will be prompted
mysql -u root -p"root_password" -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '';"
mysql -u root -p"root_password" -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"

# Flush privileges
mysql -u root -p"root_password" -e "FLUSH PRIVILEGES;"

# Alter the root user's password, password will be prompted
mysql -u root -p"root_password" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"

# Start mysqld_safe
mysqld_safe