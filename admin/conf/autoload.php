<?php

!defined('APPPATH') && exit();
@session_start();

global $args;
global $_G;

require APPPATH . '/conf/StopAttack.php';
require APPPATH . '/conf/msg.php';
require APPPATH . '/conf/functions.php';
require APPPATH . '/conf/base.php';

if ($args[0] != 'upload') {
    require APPPATH . '/conf/cookieCheck.php';
}


//登录状态
if (!($args[0] == 'member' && $args[1] == 'login') && $args[0] != 'upload') {
    if (!isset($_G['admin'])) { //不存在session
        echo '<script type="text/javascript">parent.window.location.href="' . BASEURL . '/member/login' . '"</script>';
        return;
    } else {
        if (!isset($_SESSION['admin'])) {
            $_SESSION['admin'] = $_G['admin'];
        }

        if (isset($_SESSION['admin']['member_type'])) {
            //权限判断 此处应当优化 从配置文件中读取
            $Ctrl = new CTRL_Terms();
            $Ctrl->setTermType("type_member");
            $rs = $Ctrl->selectDB();
            $roles = array();
            foreach ($rs as $key => $value) {
                $roles[$value['term_alias']] = $value;
            }
            $urole = str_encode($_SESSION['admin']['member_type']);
            if ($urole == 'super') { //超级用户
                
            } else if (isset($roles[$urole])) {
                //判断 权限
                $rolex = unserialize($roles[$urole]['term_key9']);  
                if (isset($args[2]) && !isset($rolex["type_post-" . $args[2] . "-1"])) {
                    cs_http_status('403');
                    return;
                }
            } else {
                cs_http_status('403');
                return;
            }
        } else {
            cs_http_status('403');
            return;
        }
    }
}


if (isset($_POST['SiteId'])) {
    $_POST['SiteId'] = (int) $_POST['SiteId'];
}

if (isset($_POST['SiteId'])) {
    $_POST['SiteId'] = (int) $_POST['SiteId'];
}