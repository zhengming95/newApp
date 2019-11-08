<?php

!defined('APPPATH') && exit();


$basicURL = array();
$basicURL['404'] = '404';

//过滤全局的搜索选项
$search = array();
if (isset($_REQUEST['search'])) {
    if (is_array($_REQUEST['search'])) {
        foreach ($_REQUEST['search'] as $key => $value) {
            if (is_array($value)) {
                foreach ($value as $key1 => $value1) {
                    if (is_array($value1)) {
                        foreach ($value1 as $key2 => $value2) {
                            $_REQUEST['search'][$key][$key1][$key2] = ($value2);
                        }
                    } else {
                        $_REQUEST['search'][$key][$key1] = ($value1);
                    }
                }
            } else {
                $_REQUEST['search'][$key] = ($value);
            }
        }
        $search = $_REQUEST['search'];
    } else {
        $search = ($_REQUEST['search']);
    }
    if (isset($_REQUEST['searchsubmit'])) {
        $search['page'] = '1';
    }
}

if (!isset($search['page']) || (int) $search['page'] < 1) {
    $search['page'] = '1';
}
$search['start'] = ($search['page'] - 1 ) * PAGELEN; //开始记录
$search['pagelen'] = PAGELEN; //每页显示数量
$search['dcount'] = 0; //




$data = array();
if (isset($_POST['PostExAttr'])) {
    if (is_array($_POST['PostExAttr'])) {
        foreach ($_POST['PostExAttr'] as $key => $value) {
            $_POST['PostExAttr'][$key] = ($value);
        }
        $data = $_POST['PostExAttr'];
    } else {
        $data = ($_POST['PostExAttr']);
    }
}
if (isset($_POST['Dict'])) {
    $data['Dict'] = $_POST['Dict'];
}
$_POST['PostExAttr'] = serialize($data);


$data = array();
if (isset($_POST['TermExAttr'])) {
    if (is_array($_POST['TermExAttr'])) {
        foreach ($_POST['TermExAttr'] as $key => $value) {
            $_POST['TermExAttr'][$key] = ($value);
        }
        $data = $_POST['TermExAttr'];
    } else {
        $data = ($_POST['TermExAttr']);
    }
}
$_POST['TermExAttr'] = serialize($data);
