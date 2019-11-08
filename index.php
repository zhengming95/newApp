<?php

!defined('DEBUG') && define('DEBUG', false); //调试模式
header("Content-type: text/html; charset=utf-8");

!defined('BASEFILE') && define('BASEFILE', basename(__FILE__)); //磁盘的路径 
!defined('BASEPATH') && define('BASEPATH', str_replace('\\', '/', dirname(__FILE__))); //磁盘的路径 
require BASEPATH . '/config_theme.php'; //配置文件路径
!defined('APPPATH') && define('APPPATH', BASEPATH . '/www');                           //控制器程序处理的目录

if (isset($_GET['theme'])) {
    if ($_GET['theme'] == 'apicloud') {
        !defined('THEME') && define('THEME', 'apicloud');                                     //主题的路径
    } else if ($_GET['theme'] == 'weixin') {
        !defined('THEME') && define('THEME', 'weixin');                                     //主题的路径
    }
}

!defined('THEME') && define('THEME', ADMINPATH);                                     //主题的路径

if (ALLCACHE) {
    require BASEPATH . '/cache.php';                              //是否使用缓存
}

//!defined('REWRITEURL') && define('REWRITEURL', ''); // 开启伪静态后去掉的url
//!defined('BASEURL') && define('BASEURL', REWRITEURL); //程序访问的url 末尾没有 /

require BASEPATH . '/config.php';                               //配置文件路径
require BASEPATH . '/system/Controller.php';

