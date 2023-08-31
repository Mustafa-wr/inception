if [ ! -f /var/www/wordpress/wp-config.php ]; then
cat << EOF > /var/www/wordpress/wp-config.php
<?php
define('DB_NAME', '${DB_NAME}');
define('DB_USER', '${DB_USER}'));
define('DB_PASSWORD', '${DB_PASS}'));
define('DB_HOST', '${DB_HOST}'));
\$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
   define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';
EOF
fi