<?php
$baseUrl = "//federico-pc/webs/mimpi/";
$baseUrl2 = "//federico-pc:8080/mimpi/";
//$baseUrl = "http://www.mimpi.com.ar/";
//$baseUrl = "/home/mimpi_ftp/mimpi.com.ar/";
// HTTP
define('HTTP_SERVER', $baseUrl2);
define('HTTP_IMAGE', $baseUrl2.'image/');
define('HTTP_ADMIN', $baseUrl2.'admin/');

// HTTPS
define('HTTPS_SERVER', $baseUrl2);
define('HTTPS_CATALOG', $baseUrl2);
define('HTTPS_IMAGE', $baseUrl2.'image/');


// DIR
define('DIR_APPLICATION', $baseUrl2 . 'admin/');
define('DIR_SYSTEM', $baseUrl . 'system/');
define('DIR_DATABASE', $baseUrl . 'system/database/');
define('DIR_LANGUAGE', $baseUrl . 'admin/language/');
define('DIR_TEMPLATE', $baseUrl2 . 'admin/view/theme/');
define('DIR_CONFIG', $baseUrl . 'system/config/');
define('DIR_IMAGE', $baseUrl2 .'image/');
define('DIR_CACHE', $baseUrl .'system/cache/');
define('DIR_DOWNLOAD', $baseUrl2 .'download/');
define('DIR_LOGS', $baseUrl2 .'system/logs/');
define('DIR_CATALOG', $baseUrl2.'/catalog/');

// DB
/*define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'mysql.lomatsa.com.ar');
define('DB_USERNAME', 'mimpi_usr');
define('DB_PASSWORD', 'mimpi_pass');
define('DB_DATABASE', 'mimpi_db');
define('DB_PREFIX', '');*/
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost:3306');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'db159357');
define('DB_DATABASE', 'mimpi_db');
define('DB_PREFIX', '');
?>