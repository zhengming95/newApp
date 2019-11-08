<?php

$php_path = str_replace('\\', '/', dirname(dirname(dirname(dirname(dirname(__FILE__))))));
$php_url = str_replace('\\', '/', dirname(dirname(dirname(dirname(dirname($_SERVER['PHP_SELF']))))));

//文件保存目录路径
$save_path = $php_path . '/upload/attached/';
//文件保存目录URL
$save_url = $php_url . '/upload/attached/';

$save_url = str_replace('//', '/', $save_url);
//echo $save_path;
//echo  $save_url;
//echo $save_url;
//echo $save_url;
//根目录路径，可以指定绝对路径，比如 /var/www/attached/
$root_path = $save_path;
//根目录URL，可以指定绝对路径，比如 http://www.yoursite.com/attached/
$root_url = $save_url;
