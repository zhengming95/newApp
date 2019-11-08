<?php

!defined('APPPATH') && exit();
!defined('PAGECACHE') && define('PAGECACHE', false); //页面是否缓存
!defined('PAGECACHETIME') && define('PAGECACHETIME', '1800'); //缓存 半小时
!defined('COMPRESS') && define('COMPRESS', false); //页面是否缓存
!defined('STARTGZIP') && define('STARTGZIP', false);

!defined('TEST') && define('TEST', false); //测试
!defined('TPLDIR') && define('TPLDIR', BASEPATH . '/themes/');


$_SERVER['REQUEST_URI'] = str_replace('.html', '', $_SERVER['REQUEST_URI']); //屏蔽掉html后缀
@ob_end_clean();
$iscache = false; //判断缓存
if (PAGECACHE) {
    $uri = $_SERVER['REQUEST_URI'];
    $md5file = BASEPATH . '/data/cache/' . md5($uri) . '.php';
    if (is_file($md5file)) {
        $fchange = filemtime($md5file);
        if ((time() - $fchange) < PAGECACHETIME) {
            $iscache = true;
            $fd = file_get_contents($md5file);
            $content = substr($fd, 13, strlen($fd) - 13);
            if (STARTGZIP) { //gzip                
                if (!headers_sent() && extension_loaded("zlib") && strstr($_SERVER["HTTP_ACCEPT_ENCODING"], "gzip")) {
                    $content = gzencode($content, 9);
                    header("Content-Encoding: gzip");
                    header("Vary: Accept-Encoding");
                    header("Content-Length: " . strlen($content));
                }
                echo $content;
            } else {
                echo $content;
            }
        }
    }
}


if ($iscache == false) {

    !defined("SYS") && define('SYS', str_replace('\\', '/', dirname(__FILE__)));

    require(SYS . '/Functions.php');                                //常用函数
// 判断是否是初始化数据信息
    require(SYS . '/classes/class.DBC.php');
    require(SYS . '/classes/class.DB_Model.php');
    require(SYS . '/classes/class.Model.php');
    require(SYS . '/classes/class.Controller.php');
    /**
     * 解析请求参数
     */
    !isset($argv) ? ($args = djy_analyze_url(cs_request_uri())) : ($args = djy_analyze_argv($argv));
//数据库
    if (defined("CONNDB") && CONNDB)
        Model::$dbc = new DBC(DBTYPE, DBHOST, DBUSERNAME, DBPASSWORD, DBNAME, PREFIX, SETUP);   //初始化db

    load_class("RainTPL", 'core');
    Controller::$args = $args;
    Controller::$tpl = new RainTPL();

    $s = STATICURL;
    $s = '/' . $s;
    $s = str_replace('//', '/', $s);
    if (substr($s, strlen($s) - 1) != '/') {
        $s = $s . '/';
    }

    RainTPL::configure("base_url", 'http://' . $_SERVER["HTTP_HOST"] . $s);
    RainTPL::configure("tpl_dir", 'themes/' . THEME . '/');
    RainTPL::configure("cache_dir", "cache/");
    RainTPL::configure("php_enabled", true);


    if (DEBUG == true && isset(Model::$dbc->errno)) {
        @header("Content-type: text/html; charset=utf-8");
        exit('数据库连接错误' . Model::$dbc->errno);
    }

    file_exists(AUTOMODEL . '/conf/autoload.php') && require (AUTOMODEL . '/conf/autoload.php');    //加载通用接口


    if (defined("LOG") && strtoupper(LOG) == 'ON') {                    //记录日志信息
        $_pef = isset($_SERVER["HTTP_REFERER"]) ? $_SERVER["HTTP_REFERER"] : "";
        $_age = isset($_SERVER["HTTP_USER_AGENT"]) ? $_SERVER["HTTP_USER_AGENT"] : "";
        $strlog = cs_client_ip() . '--' . cs_request_uri() . '--' . $_pef . '--' . $_age;
        write_log_file($strlog);
    }


    ob_start();

    if (isset($args[0]) && $args[0] == 'system') { //系统功能
        if (isset($args[1])) { //验证码
            switch ($args[1]) {
                case 'captcha':
                    Model::$dbc->close();
                    djy_captcha();
                    break;
                case 'service':
                    load_controller_file($args[2], $args, 'service');
                    break;
                default:
                    break;
            }
        }
    } else {
        file_exists(APPPATH . '/conf/autoload.php') && require APPPATH . '/conf/autoload.php';          //加载客户端配置
        if (!TEST) {
            $_flag = false;
            if (isset($basicURL)) {
                if (!(isset($basicURL[$args[0]]) && load_controller_file($basicURL[$args[0]], $args))) {
                    if (!load_controller_file($args[0], $args)) {
                        if (!(isset($basicURL['*']) && load_controller_file($basicURL['*'], $args))) {
                            if (!(isset($basicURL['404']) && load_controller_file($basicURL['404'], $args))) {
                                $_flag = true;
                            }
                        }
                    }
                }
            } else if (!load_controller_file($args[0], $args)) {
                $_flag = true;
            }
            if ($_flag) {
                header("Content-type: text/html; charset=utf-8");
                cs_http_status(404);
                echo ('<center><h1>404 你懂得</h1></center>');
                if (isset($_SERVER["HTTP_REFERER"])) { //来源网站    
                    echo ('<center><a href="' . $_SERVER["HTTP_REFERER"] . '">返回</a></center>');
                }
            }
        }
    }

    $html = ob_get_contents();
    ob_end_clean();
    if (defined("CONNDB") && CONNDB)
        Model::$dbc->close();

    if (COMPRESS) {
        $html = code_compresshtml($html);
    }
    if (STARTGZIP) {
        ob_start('zip_ob_gzip');
        echo $html;
        ob_end_flush();
    } else {
        echo $html;
    }
    if (PAGECACHE) {
        $uri = $_SERVER['REQUEST_URI'];
        $md5file = BASEPATH . '/data/cache/' . md5($uri) . '.php';
        file_put_contents($md5file, '<?php exit;?>' . ($html));
    }
}