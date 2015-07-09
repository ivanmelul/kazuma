<?php
$url = 'http://www.kazuma.com.ar/';
$directorioRaiz = '/home/kazuma_ftp/kazuma.com.ar/';
/*$url = 'http://localhost:8080/kazuma/';
$directorioRaiz = 'c:/wamp/www/kazuma/';*/
// HTTP
define('HTTP_SERVER', $url);
define('HTTP_IMAGE', $url . 'image/');
define('HTTP_ADMIN', $url . 'admin/');

// HTTPS
define('HTTPS_SERVER', $url);
define('HTTPS_IMAGE', $url . 'image/');

// DIR
define('DIR_APPLICATION', $directorioRaiz.'catalog/');
define('DIR_SYSTEM', $directorioRaiz.'system/');
define('DIR_DATABASE', $directorioRaiz.'system/database/');
define('DIR_LANGUAGE', $directorioRaiz.'catalog/language/');
define('DIR_TEMPLATE', $directorioRaiz.'catalog/view/theme/');
define('DIR_CONFIG', $directorioRaiz.'system/config/');
define('DIR_IMAGE', $directorioRaiz.'image/');
define('DIR_CACHE', $directorioRaiz.'system/cache/');
define('DIR_DOWNLOAD', $directorioRaiz.'download/');
define('DIR_LOGS', $directorioRaiz.'system/logs/');

//Custom
define('SALE_CATEGORY_ID', '76');
define('CAMPAIGN_BANNER_ID', '8');
define('SIZE_ATTRIBUTE_GROUP_ID', '7');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'mysql.kazuma.com.ar');
//define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'kazuma');
define('DB_PASSWORD', 'kazuma_pass');
define('DB_DATABASE', 'kazuma');
define('DB_PREFIX', '');
/*
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'mimpi_db');
define('DB_PREFIX', '');
*/
?>