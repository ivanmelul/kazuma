<?php
$url = 'http://www.kazuma.com.ar/';
$directorioRaiz = '/home/kazuma/kazuma.com.ar/';

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
define('DB_HOSTNAME', 'mysql.kazuma.com.ar');
define('DB_USERNAME', 'kazuma');
define('DB_PASSWORD', 'kazukazu');
define('DB_DATABASE', 'kazuma');
define('DB_PREFIX', '');
?>