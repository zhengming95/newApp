<?php

!defined('APPPATH') && exit();
require_cache(AUTOMODEL . '/functions/Terms.php');
$data = $_REQUEST['data'];
$data = str_replace('\"', '"', $data);

$nodes = json_decode($data);

saveTree($nodes);

function saveTree($nodes) {
    $num = count($nodes);
    foreach ($nodes as $key => $value) {
        $Ctrl = new CTRL_Terms();
        $FieldsArr = array();
        $FieldsArr[$Ctrl->_TermIdField()] = $value->id;
        $FieldsArr[$Ctrl->_TermParentIdField()] = (int) $value->pId;
        $FieldsArr[$Ctrl->_TermOrderField()] = $num - $key;
        termEditFields($FieldsArr);
        if (isset($value->children)) {
            saveTree($value->children);
        }
    }
}
