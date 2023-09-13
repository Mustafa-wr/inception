#!/bin/bash

# Start the MariaDB service
service mariadb start

bash /create_user.sh

exec mysqld --skip-log-error --user=root
