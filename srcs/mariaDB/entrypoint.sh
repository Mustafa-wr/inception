
service mysql start

mysql -u root -e "CREATE DATABASE;"
mysql -u root -e "CREATE USER ;"
mysql -u root -e "GRANT ALL PRIVILEGES "
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost';"

# Continue with the rest of the script for setting up the database

