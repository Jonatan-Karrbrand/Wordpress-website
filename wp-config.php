<?php
/**
 * Baskonfiguration för WordPress.
 *
 * Denna fil används av wp-config.php-genereringsskript under installationen.
 * Du behöver inte använda webbplatsen, du kan kopiera denna fil direkt till
 * "wp-config.php" och fylla i värdena.
 *
 * Denna fil innehåller följande konfigurationer:
 *
 * * Inställningar för MySQL
 * * Säkerhetsnycklar
 * * Tabellprefix för databas
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL-inställningar - MySQL-uppgifter får du från ditt webbhotell ** //
/** Namnet på databasen du vill använda för WordPress */
define('DB_NAME', 'slutprojekt');

/** MySQL-databasens användarnamn */
define('DB_USER', 'root');

/** MySQL-databasens lösenord */
define('DB_PASSWORD', 'root');

/** MySQL-server */
define('DB_HOST', 'localhost');

/** Teckenkodning för tabellerna i databasen. */
define('DB_CHARSET', 'utf8mb4');

/** Kollationeringstyp för databasen. Ändra inte om du är osäker. */
define('DB_COLLATE', '');

/**#@+
 * Unika autentiseringsnycklar och salter.
 *
 * Ändra dessa till unika fraser!
 * Du kan generera nycklar med {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Du kan när som helst ändra dessa nycklar för att göra aktiva cookies obrukbara, vilket tvingar alla användare att logga in på nytt.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'uCEXt^zV=d+(,N(5F];c?;gww(@JonWN02;B@W};zQHl}qJAZcrPjNdt-gnG+J[&');
define('SECURE_AUTH_KEY',  'M9Obs2lP_FaMtS>:wQ +6r|b=oiW`>n5Ri/}Kg5X3,oY(|ojD|TAJ||;n-9P+v{a');
define('LOGGED_IN_KEY',    '_7rHw_|J^12gT$_$1zf&FZ~1[J/u(V9 1+{H/LUxzJZ:e0jnT!0C0 6dRd-cj#`A');
define('NONCE_KEY',        '[adF&2]V?_?4OGUFs19(s2x[2)I7O~2f3l8h^nQi=,C#9zc+z;@^m0dEAf}unpQf');
define('AUTH_SALT',        'p7Kk (SA+AK^dK||k7$~hO+CNVj9Y7J?$ 2w,4bO4~lhQmX&lEGzI>UqFA]F!zAX');
define('SECURE_AUTH_SALT', '#-s%ZwiAT_kpa%),X:|Q0}b9~$t4wX<TIw8ib-ZD`B2u+9=Fd*LVOH5v#t(zMmu>');
define('LOGGED_IN_SALT',   '+TRwcvZ2=THtw{!xE1hB3|g~=Sj;e$|J*Nw*<9ZvJc,Iey|H!^6 J%WA/aip;+wO');
define('NONCE_SALT',       'p!RI Ikj^Fnp*k00;T/j`*,%+kJ2oa?X=ZJs>;Z9BnN.RxFJMAfBDeu,5!D)M3#v');

/**#@-*/

/**
 * Tabellprefix för WordPress Databasen.
 *
 * Du kan ha flera installationer i samma databas om du ger varje installation ett unikt
 * prefix. Endast siffror, bokstäver och understreck!
 */
$table_prefix  = 'jk_';

/**
 * För utvecklare: WordPress felsökningsläge.
 *
 * Ändra detta till true för att aktivera meddelanden under utveckling.
 * Det är rekommderat att man som tilläggsskapare och temaskapare använder WP_DEBUG
 * i sin utvecklingsmiljö.
 *
 * För information om andra konstanter som kan användas för felsökning,
 * se dokumentationen.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Det var allt, sluta redigera här! Blogga på. */

/** Absoluta sökväg till WordPress-katalogen. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Anger WordPress-värden och inkluderade filer. */
require_once(ABSPATH . 'wp-settings.php');
