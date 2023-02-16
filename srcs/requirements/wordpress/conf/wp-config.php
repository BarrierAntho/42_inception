<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_db' );

/** Database username */
define( 'DB_USER', 'wp_usr_name' );

/** Database password */
define( 'DB_PASSWORD', 'wp_usr_password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'zy$YW0j>aD6^pma`(h`RzWR9|r`$?,78m+z+b ,+$_yfRfxyp+_|5M4*j-p=2jju');
define('SECURE_AUTH_KEY',  'Rk3g!X6-]1Yr[3O49KMr5 :_omsG%]>/Ek-.GQ3s6-aI)LAK;3 $#X>&~BvD().3');
define('LOGGED_IN_KEY',    'v|w!ojZ$fUG5ulo=8l|qlBihCW_LW J+I )1O0kUsq^v*jCH?l/dGdq{UxUC8$ou');
define('NONCE_KEY',        '5RFtMzCN-+T4ndvCxLF`*TD*:MukDDpWrLermhpJo!ELuI+iZlY(YAE8^!^++F38');
define('AUTH_SALT',        'p87R3oG=3Az5/+&QvbanNE^M1A5booEM]9vM4Y3m6mou$UB?tQ9BIU+8o!1eg666');
define('SECURE_AUTH_SALT', 'C3{F9Nhz+tg2,_92;|RyZTIQW@|}{chxzf[NMcSk9x!1z$#qc5i6[QonEd @6_xV');
define('LOGGED_IN_SALT',   ' E_nvi8oXN1kqgg9/_zh~~Y:ooRr|wDxfS-:;avyg5*Rg`|Ylxs4r):8e|bhA+g}');
define('NONCE_SALT',       '!|2O597gJB7pOvcrlt~3~{fY2f-_&0v$+}+lHeki@IR;FQ&}iTGz]mhHI|ZJb4~o');
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
	define( 'ABSPATH', __DIR__ . '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
