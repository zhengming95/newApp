<?php
!defined('APPPATH') && exit();
/**
 * 站点信息
 */

require_cache(AUTOMODEL . '/functions/Options.php');

for ($i = 0; $i < 10; $i++) {
    if (isset($_FILES['file' . $i])) {
        if ($_FILES['file' . $i]['name'] != "") {
            $config = array();
            $config['field'] = 'file' . $i;
            $_POST['OptionValue']['img' . $i] = upload_img($config);
        }
    }
}
// var_dump($args);


if ($args[1] == "edit") {
    //系统设置	
    $Ctrl = new CTRL_Options();
    $Ctrl->setOptionKey($args[2]);
    $_Model = optionGetOne($Ctrl);
//    echo $Ctrl->lastsql();
//    var_dump($_Model);
    if (isset($_Model) && (int) ($_Model->getOptionId()) > 0) {
        if (is_file(themeinfo('path') . 'site/' . $args[2] . '.php')) {
            require (themeinfo('path') . 'site/' . $args[2] . '.php');
        } else {
            require (BASEPATH . '/data/option/' . $args[2] . '_edit.php' );
        }
    } else {
//        echo (themeinfo('path') . 'site/' . $args[2] . '.php');
        if (is_file(themeinfo('path') . 'site/' . $args[2] . '.php')) {
            require (themeinfo('path') . 'site/' . $args[2] . '.php');
        } else {
            echo '请求参数错误';
            exit();
        }
    }
} elseif ($args[1] == "quanxian") {

    //权限列表
    require_cache(AUTOMODEL . '/controller/Terms.php');
    $Ctrl = new CTRL_Terms();
    $Ctrl->setTermType('site_quanxian');
    $Ctrl->setTermParentId(0);
    $ModelArr = termList($Ctrl, 20, 0);
    $_Model = $Ctrl;
    // 
    require (themeinfo('path') . 'site_' . $args[1] . '.php');
} elseif ($args[1] == "save") {
    $Ctrl = new CTRL_Options();
//    var_dump($_POST);
    $Ctrl->setOption($_POST);
//    var_dump($Ctrl);
    $_Model = optionEdit($Ctrl);
    if (is_file(themeinfo('path') . 'site/' . $args[2] . '.php')) {
        require (themeinfo('path') . 'site/' . $args[2] . '.php');
    } else {
        require (BASEPATH . '/data/option/' . $args[2] . '_edit.php' );
    }
} else {
    $_Model = $Ctrl;
    require (themeinfo('path') . 'site_' . $args[1] . '.php'); //数据库操作方法s
}


