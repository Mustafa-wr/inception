cd /var/www/html

wp core download --allow-root

wp config create --dbname=root --dbuser=root \
				--dbpass=root --allow-root \
			  	 --dbpass=root --allow-root

wp core install --url=localhost --title=ft_services --admin_user=admin --admin_password=admin --allow-root

wp core config --dbname=wordpress --dbuser=root \
				--dbpass=root --allow-root \
			  	 --dbpass=root --allow-root

wp user create user1 user1@localhost --role=author --user_pass=user1 --allow-root

cd -

php-fpm7.4 -F