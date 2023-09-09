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
define('DB_USER', 'mariadb');
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
define('AUTH_KEY',         '%+2;gWJrwI9+z6-=j3AhU #oq8j5B4wgdZGhkO1VdOwTMqmly|XM,U=!ezt-S2|p');
define('SECURE_AUTH_KEY',  'egaVL}X6l,,:@.{5Q+H2o!|JBZhf$!d`MPxoMsgz$w |kNdDSwB[(ab$04c-OC,m');
define('LOGGED_IN_KEY',    'Q%3/-P+1-TA%!.(pR{rPhDv B0<z6B^8#7SK$U0T0gVZ]D-q8Y9,|f6NyU,,:$J]');
define('NONCE_KEY',        'Wq9^H=Gy#5fV@@Qy=:NwS`RTgm+7TH(lvE%Z0z|nG^dmd<+w%E!)lX(a&;N?[sVp');
define('AUTH_SALT',        'Wa5Y2!h]14UhXlv7LB*2g5!>^,$HT|AD$DdKQ-+TVRh6QO2`7EGg=T5yjf,ax`[-');
define('SECURE_AUTH_SALT', '+qncUiE$y 9cP8~jq[u_76`@Wk,*oxiV%-BGgV-b)>JFH6T.bEy8]F(X>PKR49wy');
define('LOGGED_IN_SALT',   'JRQF-tv|XgC]oK?IgZge;2#&|) ba~yY(#!7xLb<HHdL!L|L6w |F+0.NK5lvb{b');
define('NONCE_SALT',       'HsU~uf$|.!JjFgdq3*i-;eqboZpe6M0^ t1Dk,:0?%sp5o-MGq0,!sr? X3dZzKN');
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