#!/bin/bash
mysqladmin -u root password "${DB_PASSWORD}"

mysql -u root -p"${DB_PASSWORD}" -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"

echo "Creating user and granting privileges..."
echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -p"${DB_PASSWORD}" -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"

echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
mysql -u root -p"${DB_PASSWORD}" -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"

mysql -u root -p"${DB_PASSWORD}" -e "FLUSH PRIVILEGES;"

mysql -u root -p"${DB_PASSWORD}" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"

