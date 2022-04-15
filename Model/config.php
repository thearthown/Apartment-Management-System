<?php
define('CURRENCY', '$');
define('WEB_URL', 'http://localhost/apartment/');
define('ROOT_PATH', 'C:\xampp\htdocs\apartment/');


define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'dbapartment');
$link = ($GLOBALS["___mysqli_ston"] = mysqli_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD)) or die(mysqli_error($GLOBALS["___mysqli_ston"]));mysqli_select_db( $link, constant('DB_DATABASE')) or die(mysqli_error($GLOBALS["___mysqli_ston"]));?>