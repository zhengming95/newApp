<?php
!defined('APPPATH') && exit();

/* 数据库配置 */
!defined('CONNDB') && define('CONNDB', true);  //是否连接数据库
!defined('DBTYPE') && define('DBTYPE', 'mysql');  //数据库类型 mysql mysqli
!defined('PREFIX') && define('PREFIX', '');  //数据表前缀
!defined('DBC_ERROR') && define('DBC_ERROR', '系统升级维护中……');
!defined('SETUP') && define("SETUP", false);


!defined('DBCACHE') && define('DBCACHE', false); //数据库是否缓存
!defined('DBCACHETIME') && define('DBCACHETIME', '1800'); //缓存 半小时
!defined('PAGECACHE') && define('PAGECACHE', false); //页面是否缓存
!defined('PAGECACHETIME') && define('PAGECACHETIME', '1800'); //缓存 半小时
!defined('COMPRESS') && define('COMPRESS', false); //页面是否缓存

!defined('BASEFILE') && define('BASEFILE', basename(__FILE__)); //磁盘的路径 
!defined('BASEPATH') && define('BASEPATH', str_replace('\\', '/', dirname(__FILE__))); //磁盘的路径 

/* 每页显示多少条数据 */
!defined('PAGELEN') && define('PAGELEN', '10');
/* * smtp配置 */
!defined('SMTPSERVER') && define('SMTPSERVER', 'smtp.126.com');  //smtp服务器
!defined('SMTPSERVERPORT') && define('SMTPSERVERPORT', '25');  //端口
!defined('SMTPUSERMAIL') && define('SMTPUSERMAIL', 'xx@163.com');  //地址
!defined('SMTPUSER') && define('SMTPUSER', 'root');  //用户名
!defined('SMTPPASS') && define('SMTPPASS', 'pwd');  //密码

//只有 php 5.1 才支持 设置时区为上海
@ini_set('date.timezone', 'Asia/Shanghai'); //时区
@date_default_timezone_set('Asia/Shanghai');

!defined('INITDATA') && define("INITDATA", true);
!defined('DEBUG') && define("DEBUG", false);

$s = str_replace($_SERVER['DOCUMENT_ROOT'], '', $_SERVER['SCRIPT_FILENAME']);
$s = str_replace(BASEFILE, '', $s);
$s = str_replace('\\', '/', $s);
$s = '/' . $s;
$s = str_replace('//', '/', $s);
if (substr($s, strlen($s) - 1) == '/') {
    $s = substr($s, 0, -1);
}

!defined('STATICURL') && define('STATICURL', $s); //静态资源访问的路径
!defined('REWRITEURL') && define('REWRITEURL', STATICURL . '/' . BASEFILE); // 开启伪静态后去掉的url
!defined('BASEURL') && define('BASEURL', REWRITEURL); //程序访问的url 末尾没有 /
!defined('LOG') && define("LOG", "Off"); //记录日志
!defined('TPLDIR') && define('TPLDIR', BASEPATH . '/themes/' ); //主题路径

//默认的条件下屏蔽错误输出
if (DEBUG) {
    @ini_set("display_errors", "On");
    @error_reporting(E_ALL);
} else {
    @ini_set("display_errors", "Off");
    @error_reporting(0);
}
!defined('ADMINPATH') && define('ADMINPATH', 'admin'); //管理后台的目录文件 


!defined('THEME') && define("THEME", 'admin'); //暂时没有启用这个功能
!defined('LOGPATH') && define("LOGPATH", BASEPATH . '/system/log'); //记录日志路径 要求写权限
//这个是cookie的加密字符串
!defined('COOKIEKEY') && define('COOKIEKEY', 'y5L3Je10T9kba5j9G098K5Ne7cMbI05fff');
/* 加密算法key */
!defined('SYSPASSKEY') && define("SYSPASSKEY", 'logFileBDRlU4SSbYeRb2HXkg0Bg40');
/* 通用的类型地址 */
!defined('AUTOMODEL') && define("AUTOMODEL", BASEPATH . '/common');

!defined("SYS") && define('SYS', BASEPATH . '/system');


!defined('STARTGZIP') && define('STARTGZIP', false); //开启GZIP


!defined('TEST') && define('TEST', false); //测试