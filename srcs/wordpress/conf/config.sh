cd /var/www/wordpress

if [ ! -f wp-config.php ]; then
    wp core download --allow-root
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --allow-root
    wp core install --url=$WP_URL --title=$WP_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
    wp user create user1 user1@localhost --role=author --user_pass=$WP_USER_PASSWORD --allow-root
fi

cd -

php-fpm7.4 -F

# cd /var/www/wordpress
# wp core config	--dbhost=$DB_HOST \
# 				--dbname=$DB_NAME \
# 				--dbuser=$DB_USER \
# 				--dbpass=$DB_PASSWORD \
# 				--allow-root

# wp core install --title=$WP_TITLE \
# 				--admin_user=$WP_ADMIN_USER \
# 				--admin_password=$WP_ADMIN_PASSWORD \
# 				--admin_email=$WP_ADMIN_MAIL \
# 				--url=$WP_URL \
# 				--allow-root

# wp user create $WP_USER $WP_USER_MAIL --role=author --user_pass=$WP_USER_PASSWORD --allow-root
# cd -

# php-fpm7.4 -F