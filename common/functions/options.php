<?php

!defined('APPPATH') && exit();

/**
 *  快捷的得到一个快捷选项
 * @staticvar array $_data
 * @param type $key
 * @param type $okey
 * @return type
 */
function option_get($key, $okey) {
    static $_data = array();
    if (!isset($_data[$key])) {
        $Ctrl = new CTRL_Options();
        $Ctrl->setOptionKey($key);
        $rs = $Ctrl->selectDB();
        $_Site = NULL;
        $rsdata = array();
        foreach ($rs as $value) {
            $Ctrl->_arr_toDb($value);
            $rsdata[] = clone $Ctrl->db_model; //克隆一个     
            $_Site = $rsdata[0];
        }

        if ($_Site) {
            $_data[$key] = unserialize($_Site->getOptionValue());
        }
    }
    if (!isset($okey)) {
        return $_data[$key];
    }

    if (is_array($_data[$key])) {
        return $_data[$key][$okey];
    }
    return $_data[$key];
}

/**
 * 
 * @staticvar array $_data
 * @param type $value
 * @param type $key
 * @param type $okey
 * @return type
 */
function option_set($value, $key, $okey) {
    $value = str_encode($value);
    if (!isset($okey)) {
        $sql = "UPDATE " . PREFIX . "options SET option_value='" . serialize($value) . "' where option_key='{$key}";
        $Ctrl = new CTRL_Options();
        echo $Ctrl->execute($sql);
    } else {
        $Ctrl = new CTRL_Options();
        $Ctrl->setOptionKey($key);
        $rs = $Ctrl->selectDB();
        $_Model = NULL;
        $rsdata = array();
        foreach ($rs as $value) {
            $Ctrl->_arr_toDb($value);
            $rsdata[] = clone $Ctrl->db_model; //克隆一个     
            $_Model = $rsdata[0];
        }

        $_Site = $_Model;

        $_data = unserialize($_Site->getOptionValue());
        $_data[$okey] = $value;
        $Ctrl = new CTRL_Options();
        $Ctrl->setOptionId($_Site->getOptionId());
        $Ctrl->setOptionValue(serialize($_data));
        return $Ctrl->updateDB();
    }
}
