#!/bin/bash

# Start the MariaDB service
service mariadb start

# mysqld --user=mysql --bootstrap
# Run the create_user.sh script
bash /create_user.sh

# Keep the container running (this prevents it from exiting)
# tail -f /dev/null
exec mysqld --skip-log-error --user=root
# mysqld --user=root