<?php

!defined('APPPATH') && exit();
@session_start();

require APPPATH . '/conf/StopAttack.php';
require APPPATH . '/conf/msg.php';
require APPPATH . '/conf/functions.php';
if (defined('INITDATA') && INITDATA) {
    require APPPATH . '/conf/install.php';
}

//require_cache(BASEPATH . '/system/include/PasswordHash.class.php');
// load_class("RainTPL", 'core');
//$tpl = new RainTPL();
// RainTPL::configure("base_url", 'http://' . $_SERVER["HTTP_HOST"] . '/');
// RainTPL::configure("tpl_dir", 'themes/' . THEME . '/');
// RainTPL::configure("cache_dir", "cache/");
// RainTPL::configure("php_enabled", true);


global $args;
global $_G;

//if ($args[0] != 'upload') {
//    require APPPATH . '/conf/cookieCheck.php';
//}
//if ($args[0] != 'login' && $args[0] != 'upload') {
//    if (!isset($_G['admin'])) {
//        echo '<script type="text/javascript">parent.window.location.href="' . BASEURL . '/login' . '"</script>';
//        // djy_redirect(BASEURL . '/login');		
//        exit;
//    } else {
//        if (!isset($_SESSION['admin'])) {
//            $_SESSION['admin'] = $_G['admin'];
//        }
//    }
//}


$basicURL = array();
$basicURL['404'] = '404';
//$basicURL['corporation'] = 'index';
//$basicURL['house'] = 'index';
//$basicURL['apply'] = 'index';
//$basicURL['store'] = 'index';
//$basicURL['about'] = 'index';
//$basicURL['publish'] = 'index';
$basicURL['*'] = 'index';


//过滤全局的搜索选项
$search = array();
if (isset($_REQUEST['search'])) {
    if (is_array($_REQUEST['search'])) {
        foreach ($_REQUEST['search'] as $key => $value) {
            if (is_array($value)) {
                foreach ($value as $key1 => $value1) {
                    if (is_array($value1)) {
                        foreach ($value1 as $key2 => $value2) {
                            $_REQUEST['search'][$key][$key1][$key2] = str_encode($value2);
                        }
                    } else {
                        $_REQUEST['search'][$key][$key1] = str_encode($value1);
                    }
                }
            } else {
                $_REQUEST['search'][$key] = str_encode($value);
            }
        }
        $search = $_REQUEST['search'];
    } else {
        $search = str_encode($_REQUEST['search']);
    }
    if (isset($_REQUEST['searchsubmit'])) {
        $search['page'] = '1';
    }
}

if (!isset($search['page']) || (int) $search['page'] < 1) {
    $search['page'] = '1';
}

$len = PAGELEN;
$len = 20;


$search['start'] = ($search['page'] - 1 ) * $len; //开始记录
$search['pagelen'] = $len; //每页显示数量
$search['dcount'] = 0; //
if (!isset($search['Dict']) || !is_array($search['Dict'])) {
    $search['Dict'] = array();
}

// var_dump($search);
