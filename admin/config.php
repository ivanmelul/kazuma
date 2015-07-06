<?php
$url = 'http://www.santiamen.com.ar/';
$directorioRaiz = '/home/santiamen/santiamen.com.ar/';

// HTTP
define('HTTP_SERVER', $url . 'admin/');
define('HTTP_CATALOG', $url);
define('HTTP_IMAGE', $url . 'image/');

// HTTPS
define('HTTPS_SERVER', $url);
define('HTTPS_CATALOG', $url);
define('HTTPS_IMAGE', $url. 'image/');

// DIR
define('DIR_APPLICATION', $directorioRaiz . '/admin/');
define('DIR_SYSTEM', $directorioRaiz.'system/');
define('DIR_DATABASE', $directorioRaiz .'system/database/');
define('DIR_LANGUAGE', $directorioRaiz. 'admin/language/');
define('DIR_TEMPLATE', $directorioRaiz . 'admin/view/template/');
define('DIR_CONFIG', $directorioRaiz . 'system/config/');
define('DIR_IMAGE', $directorioRaiz . 'image/');
define('DIR_CACHE', $directorioRaiz . 'system/cache/');
define('DIR_DOWNLOAD', $directorioRaiz . 'download/');
define('DIR_LOGS', $directorioRaiz . 'system/logs/');
define('DIR_CATALOG', $directorioRaiz .'catalog/');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'mysql.santiamen.com.ar');
define('DB_USERNAME', 'santiamen');
define('DB_PASSWORD', 'santiamen_123');
define('DB_DATABASE', 'santiamen_db');
define('DB_PREFIX', '');
?>