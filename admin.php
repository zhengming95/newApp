<?php

set_time_limit(10);

!defined('BASEFILE') && define('BASEFILE', basename(__FILE__)); //磁盘的路径 
!defined('BASEPATH') && define('BASEPATH', str_replace('\\', '/', dirname(__FILE__))); //磁盘的路径 
require BASEPATH . '/config_theme.php'; //配置文件路径
!defined('APPPATH') && define('APPPATH', BASEPATH . '/admin');                           //控制器程序处理的目录
!defined('THEME') && define('THEME', 'admin'); //主题的路径

require BASEPATH . '/config.php'; //配置文件路径
require BASEPATH . '/system/Controller.php'; // 调用控制器

