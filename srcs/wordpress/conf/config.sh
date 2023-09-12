
#! /bin/bash
cd /var/www/wordpress

echo hello wordddd
# if [ ! -f wp-config.php ]; then
	echo hello world
    wp core download --force --allow-root
    # wp config create --dbname=$DB_NAME  --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --allow-root
    wp --allow-root --path=/var/www/wordpress core install \
	--url='mradwan.42.fr' --title='WordPress' \
	--skip-email --admin_email="$WP_ADMIN_MAIL" \
	--admin_user="$WP_ADMIN_USER" \
	--admin_password="$WP_ADMIN_PASSWORD"
	wp user create $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASSWORD --role=subscriber --porcelain --allow-root
# fi

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