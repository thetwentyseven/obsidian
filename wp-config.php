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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'obsidian');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'o9<w/:[I|!2[Amy17!D[Ys+E!` 3`wXVs3}}1B%pPl!+s@EF)+!JdNwLkzWe<ko!');
define('SECURE_AUTH_KEY',  '^%wvKp+,eHY+u`?G0,;N]79z2P(BT>gZV5qq:4}y(j4ZLsL[odG5 RcY|j;{2hYc');
define('LOGGED_IN_KEY',    'QIO(1O16vq*&PU/`qK|HRPT?Qg$R/S$%atwAdE_Vq)R6e}vC9&R>dQeXTf|{hbwZ');
define('NONCE_KEY',        'ICjIskoB#Y 7C[C(-K02!~~?C(8%se!Ca:1IU2T1OkE`8[7~]~%zkpV$_rl.91d:');
define('AUTH_SALT',        'C=Mv:g-~]]$tDPPZl?,16C<_isN8~Sfo}1Cw3]*0y~hei5!x-%WBx&yVZs6)au!3');
define('SECURE_AUTH_SALT', 'K:4Y]Dox-K2L]=5U*Ox-RMTNHFvv D91-If=y?RQ.ih>d)*-SDXpR(M8|3S8Cc%#');
define('LOGGED_IN_SALT',   'SI#VYDgPvtQ]a!2PI8Z0#n?^aN(XJ3qY|U*Ws%cI!s9qZHvz3A(q)`>4jZ9 E?jn');
define('NONCE_SALT',       'MImY$,b}7zZ?;EH*q%M||zf,1.3Ha$I>RWM0&v/<IF;1mgT.c1U%SK3c-,N#u&}R');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */

// Debugging for development process
define('WP_DEBUG', true);
define('SAVEQUERIES', true);

// Define URL without changing database
define('WP_SITEURL', 'http://localhost:8080/obsidian/');
define('WP_HOME', 'http://localhost:8080/obsidian/');

// Automatically update of WP core, options true/false/minor
define('WP_AUTO_UPDATE_CORE', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
