<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'wp_portfolio');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'p=ryeN*32%&%#V%9J(5=V^Que;~_99u*QiaY>X9O&Ir8Jo`G`P.)yR`Pe8-5,)O|');
define('SECURE_AUTH_KEY',  '48j)&wLmhDR<cgq;;zWJOHZ+o58%5}2C@m3Fe ~rCn_IR`TwhCEoG C)>0v]a:u&');
define('LOGGED_IN_KEY',    ',}2&wZ> ]1JE_Ba9?4w&ODZ4oq,%na8W|La`H*fILzk`<bgz`AMi7(i#Ac^Bn}q6');
define('NONCE_KEY',        '>Uor!x@{0K1OG_2agp7/6ZQV1KP5@W}V 8VJzwFY(GgD4,cNE<* P(KVNMbm]m>c');
define('AUTH_SALT',        '+kS:{sK~b6(,HY|9}CgUQ.+&sd@#IGC=UmykS2JwR W=W0GSwK5P?q0uIvHP>NA|');
define('SECURE_AUTH_SALT', ' 8;ykZicyUCJ:L<{qWWnoWD9|^OHqHg|DrvQR^[2$rbK,;qw@ICDG.2LBWnhOV/ ');
define('LOGGED_IN_SALT',   '*DO38sq6fqR$iis1nrdKXyhA&1O~U9-SVBJ`j +P^nkZdu|gxHvFoF+%.H5:KkK.');
define('NONCE_SALT',       'DsGm)y{N)}Ng.rc4NX&E5HjQrJUi(eAsSMB){o@I<&&[o;fBBJsulN hzT]>6;}_');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
