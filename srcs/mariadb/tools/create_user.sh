# #!/bin/bash
# # sleep infinity
# service mariadb start

# root -e "CREATE DATABASE ${DB_NAME};"
# mysql -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
# mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
# mysql -u root -e "FLUSH PRIVILEGES;"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"

# mysqld_safe &
# mysql_pid=$!

service mariadb start

# Wait for MariaDB to start
# until mysqladmin ping >/dev/null 2>&1; do
#   echo -n "."; sleep 0.2
# done


# Create the database
# mysql -u root -e "UPDATE user SET password=PASSWORD(${DB_PASSWORD}) WHERE user='root';"
mysql -u root -p"${DB_PASSWORD}" -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"

# Create the user and grant privileges, password will be prompted
mysql -u root -p"${DB_PASSWORD}" -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -p"${DB_PASSWORD}" -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"

# Flush privileges
mysql -u root -p"${DB_PASSWORD}" -e "FLUSH PRIVILEGES;"

# Alter the root user's password, password will be prompted
mysql -u root -p"${DB_PASSWORD}" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"

# Start mysqld_safe
mkdir blabl
# wait $mysql_pid
# service mariadb stop

mysqld_safe