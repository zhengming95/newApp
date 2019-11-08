<?php

!defined('APPPATH') && exit();
/* * 根据分类的类型 
 * 节点的id
 * 选择分类信息
 * 并执行选择函数
 * callback 
 * service=category_tree&type=category&callback=fff
 */
require_cache(AUTOMODEL . '/functions/Terms.php');
$category = str_decode($_GET['term_type']);


$Ctrl = new CTRL_Terms();
$Ctrl->setTermId((int) $_GET['site_juese']);
$jueseModel = $Ctrl->selectDB();

$caidan = array();
$quanxian = array();
if (isset($jueseModel[0])) {
    $data = unserialize($jueseModel[0]['term_ex_attr']);

    $caidan = explode(',', $data['caidan']);
    $quanxian = explode(',', $data['quanxian']);
}
$selectArr = array();
if ($category == 'site_caidan') {
    $selectArr = $caidan;
} else if ($category == 'site_quanxian') {
    $selectArr = $quanxian;
}


// var_dump($caidan);
// exit;
// var_dump($jueseModel);
// var_dump($Ctrl);
// $Ctrl->getTermExAttr();

echo '[';
$Ctrl = new CTRL_Terms();
$Ctrl->setTermType($category);
$Ctrl->setTermParentId("0");
$ModelArr = termList($Ctrl, 50, 0, "order by term_order desc");
$redata = array();
foreach ($ModelArr as $key => $value) {
    $data['id'] = $value->getTermId();
    $data['pId'] = $value->getTermParentId();
    $data['name'] = $value->getTermName();
    $data['isParent'] = true;

    if (in_array($value->getTermId(), $selectArr)) {
        echo '{id:' . $value->getTermId() . ', pId:' . $value->getTermParentId() . ', name:"' . $value->getTermName() . '", open:false , checked:true },';
    } else {
        echo '{id:' . $value->getTermId() . ', pId:' . $value->getTermParentId() . ', name:"' . $value->getTermName() . '", open:false},';
    }

    // echo '{id:' . $value->getTermId() . ', pId:' . $value->getTermParentId() . ', name:"' . $value->getTermName() . '", open:false},';

    $Ctrl = new CTRL_Terms();
    $Ctrl->setTermType($category);
    $Ctrl->setTermParentId($value->getTermId());
    $ModelArr1 = termList($Ctrl, 50, 0, "order by term_order desc");
    foreach ($ModelArr1 as $key1 => $value1) {

        if (in_array($value1->getTermId(), $selectArr)) {
            echo '{id:' . $value1->getTermId() . ', pId:' . $value1->getTermParentId() . ', name:"' . $value1->getTermName() . '", open:true,checked:true},';
        } else {
            echo '{id:' . $value1->getTermId() . ', pId:' . $value1->getTermParentId() . ', name:"' . $value1->getTermName() . '", open:true},';
        }


        $Ctrl = new CTRL_Terms();
        $Ctrl->setTermType($category);
        $Ctrl->setTermParentId($value1->getTermId());
        $ModelArr2 = termList($Ctrl, 50, 0, "order by term_order desc");
        foreach ($ModelArr2 as $key2 => $value2) {
            if (in_array($value2->getTermId(), $selectArr)) {
                echo '{id:' . $value2->getTermId() . ', pId:' . $value2->getTermParentId() . ', name:"' . $value2->getTermName() . '", open:true,checked:true},';
            } else {
                echo '{id:' . $value2->getTermId() . ', pId:' . $value2->getTermParentId() . ', name:"' . $value2->getTermName() . '", open:true},';
            }
        }
    }
}
echo ']';


