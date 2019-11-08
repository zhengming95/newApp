<?php

!defined('APPPATH') && exit();
/**
 * 站点信息
 */
for ($i = 0; $i < 10; $i++) {
    if (isset($_FILES['file' . $i])) {
        if ($_FILES['file' . $i]['name'] != "") {
            $config = array();
            $config['field'] = 'file' . $i;
            $_POST['OptionValue']['img' . $i] = upload_img($config);
        }
    }
}

$data = array();
if (isset($_POST['OptionValue']) && is_array($_POST['OptionValue'])) {
    foreach ($_POST['OptionValue'] as $key => $value) {
        $_POST['OptionValue'][$key] = ($value);
    }
    $data = $_POST['OptionValue'];
} else {
    if (isset($_POST['OptionValue'])) {
        $data = ($_POST['OptionValue']);
    }
}
$_POST['OptionValue'] = serialize($data);

class Option extends Controller {

    public function _edit($args) {
        $Ctrl = new CTRL_Options();
        $Ctrl->setOptionKey($args[2]);

        $rs = $Ctrl->selectDB();
        $_Model = NULL;

        $rsdata = array();
        foreach ($rs as $value) {
            $Ctrl->_arr_toDb($value);
            $rsdata[] = clone $Ctrl->db_model; //克隆一个     
            $_Model = $rsdata[0];
        }

        if (isset($_Model) && (int) ($_Model->getOptionId()) > 0) {

            if (is_file(themeinfo('admin') . 'option/' . $args[2] . '_edit.php')) {
                require(themeinfo('admin') . 'option/' . $args[2] . '_edit.php');
            } else if (is_file(themeinfo('path') . 'option/' . $args[2] . '_edit.php')) {
                require(themeinfo('path') . 'option/' . $args[2] . '_edit.php');
            } else {
                require(BASEPATH . '/data/option/' . $args[2] . '_edit.php' );
            }
        } else {
            echo '请求参数错误';
        }
    }

    public function _save($args) {
        $Ctrl = new CTRL_Options();
        $Ctrl->set($_POST);
        $sql = "update " . PREFIX . "options set option_value = '" . $Ctrl->getOptionValue() . "' where option_id='" . $Ctrl->getOptionId() . "' and option_key = '" . $Ctrl->getOptionKey() . "'";
        $Ctrl->execute($sql);

        $_Model = $Ctrl;
        if (is_file(themeinfo('admin') . 'option/' . $args[2] . '_edit.php')) {
            require (themeinfo('admin') . 'option/' . $args[2] . '_edit.php');
        } else if (is_file(themeinfo('path') . 'option/' . $args[2] . '_edit.php')) {
            require (themeinfo('path') . 'option/' . $args[2] . '_edit.php');
        } else {
            require (BASEPATH . '/data/option/' . $args[2] . '_edit.php' );
        }
    }

}
