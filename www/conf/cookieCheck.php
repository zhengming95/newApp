<?php

!defined('APPPATH') && exit();
global $_G;

$__adminkey = trim($_COOKIE["adminkey"] ? $_COOKIE["adminkey"] : "" );

$___adminkey = COOKIEKEY . COOKIEKEY . cs_client_ip(); //.$_SERVER["HTTP_USER_AGENT"].$_SERVER["HTTP_ACCEPT_LANGUAGE"].$_SERVER["HTTP_ACCEPT_ENCODING"];
$___adminkey = md5(md5($___adminkey));

$__t = (int) str_decrypt_base64(trim($_COOKIE["t"]));
$___t = time() - $__t;

if ($___adminkey != $__adminkey || $___t > 1800) {
    unset($_G['admin']);
    setcookie("uuid", "", time() - 1800, '/', '', false, true);
} else {
    $uuid = str_decrypt_base64(trim(isset($_COOKIE["uuid"]) ? $_COOKIE["uuid"] : ""));

    // var_dump( $uuid);
    if (strlen($uuid) > 32) {
        $id = substr($uuid, 32, strlen($uuid));
        $_G['admin'] = member_getUserById($id);
        if (substr($uuid, 0, 32) != md5(COOKIEKEY . md5($_G['admin']["member_name"]))) {
            unset($_G['admin']);
            setcookie("uuid", "", time() - 1800, '/', '', false, true);
        } else {
            setcookie("uuid", trim($_COOKIE["uuid"]), time() + 1800, '/', '', false, true);
        }
    } else {
        setcookie("uuid", "", time() - 1800, '/', '', false, true);
    }
}

setcookie("adminkey", $___adminkey, time() + 1800, '/', '', false, true);

$___userkey = COOKIEKEY . cs_client_ip(); //.$_SERVER["HTTP_USER_AGENT"].$_SERVER["HTTP_ACCEPT_LANGUAGE"].$_SERVER["HTTP_ACCEPT_ENCODING"];
$___userkey = md5(md5($___userkey));

setcookie("userkey", $___userkey, time() + 1800, '/', '', false, true);

setcookie("t", str_encrypt_base64(time()), time() + 1800, '/', '', false, true);

// var_dump($__adminkey);
// var_dump($___adminkey);