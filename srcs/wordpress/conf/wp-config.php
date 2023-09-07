<?php
/**
* The base configuration for WordPress
*
* The wp-config.php creation script uses this file during the
* installation. You don't have to use the web site, you can
* copy this file to "wp-config.php" and fill in the values.
*
* This file contains the following configurations:
*
* * MySQL settings
* * Secret keys
* * Database table prefix
* * ABSPATH
*
* @link https://wordpress.org/support/article/editing-wp-config-php/
*
* @package WordPress
*/
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');
define('DB_USER', 'mostafa');
define('DB_PASSWORD', '1234');
define('DB_HOST', 'mariadb');
/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );
/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
/**#@+
* Authentication Unique Keys and Salts.
*
* Change these to different unique phrases!
* You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
*
* You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
*
* @since 2.6.0
*/
define('AUTH_KEY',         ' w>{8>bhm1BTAZ,_erke;h!&xL|-q@#/#=udlikS2VE|MdRxUmt2;TqrC>+N>9[X');
define('SECURE_AUTH_KEY',  'f3Y[cq|b#*S_k]-ubI&TAY|%YK!BHVFIK=Djt}o#g0G?, MttHI/I_:xDxMMG0Ko');
define('LOGGED_IN_KEY',    '7-)1,8f,*ceFW2C%&YyS5#|*2_u+&-}i2#EgkZ-jKy0UA(J+aBK}&2d&]^J><c|5');
define('NONCE_KEY',        '1YA|hY|L$DdWlg7fa8>C|X<6qhf#mx?m&/l6W6a$26,Iik|+L(,V$0i1+;hSDb8<');
define('AUTH_SALT',        '[nXYY1ZylG]j+XwwMS/.a1w;Yx9p2E`Ok4]PXk+<l<#z<JGfL&k%$94I+)(k9z>F');
define('SECURE_AUTH_SALT', '.!g+1}c QV+1Z]Fa A7g1D7-x%H}r]=+%hgS0Wi+W%C6x*n7URZfd:T4.sY8U^b9');
define('LOGGED_IN_SALT',   'B/~540[2W{)pGa@[}^_6SztY#Kr_N(n~)|@Yrjs:y>>}Ckhg4I;A$z4,Tk?Et|Dv');
define('NONCE_SALT',       '9 J=#qQ`-|1Q`C_y1.w+f!`B#CqW&-!,*PC_&JOYn(3NV%Bug!T~n*egfdNegrGG');
/**#@-*/
/**
* WordPress database table prefix.
*
* You can have multiple installations in one database if you give each
* a unique prefix. Only numbers, letters, and underscores please!
*/
$table_prefix = 'wp_';
/**
* For developers: WordPress debugging mode.
*
* Change this to true to enable the display of notices during development.
* It is strongly recommended that plugin and theme developers use WP_DEBUG
* in their development environments.
*
* For information on other constants that can be used for debugging,
* visit the documentation.
*
* @link https://wordpress.org/support/article/debugging-in-wordpress/
*/
define( 'WP_DEBUG', false );
/* Add any custom values between this line and the "stop editing" line. */
/* That's all, stop editing! Happy publishing. */
/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
   define( 'ABSPATH', __DIR__ . '/' );
}
/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';