<?php
!defined('APPPATH') && exit();
/**
 * 不成功返回false
 * 成功返回 当前用户
 * @param type $username
 * @param type $userpassword
 */
function member_login($username, $userPassword) {
    $_m = member_checkUser($username);
    $_m = $_m[0];
    if ($_m) {
        $check = str_password_chk($userPassword, $_m["member_password"]);
        if (!$check) {
            $_m = FALSE;
        }
    }
    return $_m;
}

/**
 * 检查用户名是否存在
 * @param type $username
 * @return type
 */
function member_checkUser($username) {
    $Ctrl = new CTRL_Member();
    $Ctrl->setMemberName($username);
    $Model = $Ctrl->selectDB();
    $flag = false;
    if (isset($Model[0])) {
        $_m = $Model;
        $flag = $_m;
    }
    return $flag;
}

/**
 * 检查用户名是否存在
 * @param type $id
 * @return type
 */
function member_getUserById($id) {
    $Ctrl = new CTRL_Member();
    $Ctrl->setMemberId($id);
    $Model = $Ctrl->selectDB();
    // echo $Ctrl->lastsql();
    $flag = false;
    if (isset($Model[0])) {
        $_m = $Model[0];
        $flag = $_m;
    }
    return $flag;
}