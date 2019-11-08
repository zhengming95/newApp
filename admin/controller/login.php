<?php

!defined('APPPATH') && exit();

/**
 * 用户登录
 */
if (!class_exists('Model')) {
    cs_http_status(403);
    exit;
}

@header("Content-type: text/html; charset=utf-8");
require_cache(AUTOMODEL . '/functions/Member.php');
//var_dump($_POST);
if (isset($_GET['exit'])) {
    unset($_G['admin']);
   
    setcookie("uuid", "", time() - 300, '/', '', false, true);
    unset($_SESSION['admin']);
    session_destroy();
    djy_redirect(BASEURL . '/login');
} else if (isset($_GET['login'])) {
    if ($_POST['UserName'] != 'admin') {
        exit;
    }

    $succ = member_login($_POST['UserName'], $_POST['UserPassword']);
    $MSG['login'] = "用户名或密码错误";
    if ($succ) {
        $_G['admin'] = $succ;
        $uuid = str_encrypt_base64(md5(COOKIEKEY . md5($succ["member_name"])) . trim($succ["member_id"]));
        setcookie("uuid", $uuid, time() + 300, '/', '', false, true);

        djy_redirect(BASEURL);
    }
    $errormsg = $MSG['login'];
}
require (themeinfo('path') . 'login.php'); //数据库操作方法