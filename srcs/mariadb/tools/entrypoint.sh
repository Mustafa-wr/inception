#!/bin/bash

# Start the MariaDB service
service mariadb start

# Run the create_user.sh script
bash /create_user.sh

# Keep the container running (this prevents it from exiting)
tail -f /dev/null
