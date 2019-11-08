<?php


!defined('DBCACHE') && define('DBCACHE', false); //数据库缓存
!defined('PAGECACHE') && define('PAGECACHE', false); //页面缓存
!defined('COMPRESS') && define('COMPRESS', false); //页面是否缓存

$modifiedTime = time();
$modifiedTime = date('D, d M Y H:i:s', $modifiedTime) . ' GMT';
if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']) && $modifiedTime == $_SERVER['HTTP_IF_MODIFIED_SINCE']) {
    header('HTTP/1.1 304 Not Modified');
    exit();
}
header("Last-Modified: $modifiedTime");

$etag = md5($_SERVER['REQUEST_URI']);
if (isset($_SERVER['HTTP_IF_NONE_MATCH']) && $etag == $_SERVER['HTTP_IF_NONE_MATCH']) {
    header('HTTP/1.1 304 Not Modified');
    exit();
}
header('etag: ' . $etag);
$seconds = 31536000;
$time = date('D, d M Y H:i:s', time() + $seconds) . ' GMT';
header("Expires: $time");

