<?php

!defined('APPPATH') && exit();
require_cache(AUTOMODEL . '/functions/Terms.php');

if (isset($_GET["nodes"])) {
    if ($_GET["nodes"] == 'show') {
        $Ctrl = new CTRL_Terms();

        $term_type = $_GET['term_type'] ? $_GET['term_type'] : 'category';

        $Ctrl->setTermType($term_type);

        $pId = "0";
        $pName = "";
        $pLevel = "";
        $pCheck = "";
        if (array_key_exists('id', $_REQUEST)) {
            $pId = $_REQUEST['id'];
        }
        if (array_key_exists('lv', $_REQUEST)) {
            $pLevel = $_REQUEST['lv'];
        }
        if (array_key_exists('n', $_REQUEST)) {
            $pName = $_REQUEST['n'];
        }
        if (array_key_exists('chk', $_REQUEST)) {
            $pCheck = $_REQUEST['chk'];
        }
        if ($pId == null || $pId == "")
            $pId = "0";
        if ($pLevel == null || $pLevel == "")
            $pLevel = "0";
        if ($pName == null)
            $pName = "";
        $Ctrl->setTermParentId($pId);
        $ModelArr = termList($Ctrl, 50, 0, "order by term_order desc");
        $redata = array();
        foreach ($ModelArr as $key => $value) {
//    $value = new DB_Terms();
            $data = array();
            $data['id'] = $value->getTermId();
            $data['pId'] = $value->getTermParentId();
            $data['name'] = $value->getTermName();

            if (strpos($term_type, 'site_caidan') !== false) {
                $data['url'] = $value->getTermExAttr();
            }

            $data['isParent'] = true;
            $redata[] = $data;
        }

        echo json_encode($redata);
    } else if ($_GET["nodes"] == 'save') {
        $data = $_REQUEST['data'];
        $data = str_replace('\"', '"', $data);
        $nodes = json_decode($data);
        saveTree($nodes);
    }
} else if (isset($_GET["node"])) {
    if ($_GET["node"] == 'add') {

        $term_name = $_GET['term_name'];
        $term_type = $_GET['term_type'];
        $term_parent_id = (int) $_GET['term_parent_id'];
        $Ctrl = new CTRL_Terms();
        $Ctrl->setTermParentId($term_parent_id);
        $Ctrl->setTermType($term_type);
        $Ctrl->setTermName($term_name);

        if ($Ctrl = termAdd($Ctrl)) {
            echo $Ctrl->getTermId();
        } else {
            echo 0;
        }
    } else if ($_GET["node"] == 'edit') {
        
    } else if ($_GET["node"] == 'save') {
        if ($_GET["term_type"] == "site_juese") {
            // data : "id=" + treeNode.id+"&name="+treeNode.name+"&caidan="+textcaidan+"&quanxian="+textquanxian,

            $data = $_REQUEST['caidan'];
            $data = str_replace('\"', '"', $data);
            $nodes = json_decode($data);
            $textcaidan = '';
            // var_dump($nodes);

            foreach ($nodes as $key => $value) {
                $textcaidan .=',' . $value->id;
            }
            $data = $_REQUEST['quanxian'];
            $data = str_replace('\"', '"', $data);
            $nodes = json_decode($data);
            $textquanxian = '';
            foreach ($nodes as $key => $value) {
                $textquanxian .=',' . $value->id;
            }

            $exAttr = array();
            $exAttr['caidan'] = $textcaidan;
            $exAttr['quanxian'] = $textquanxian;

            $id = (int) $_REQUEST['id'];
            // var_dump($id);
            $Ctrl = new CTRL_Terms();
            $Ctrl->setTermId($id);
            $Ctrl->setTermName($_REQUEST['name']);
            $Ctrl->setTermExAttr(serialize($exAttr));

            if (termEdit($Ctrl)) {
                echo 1;
            } else {
                echo 0;
            }
        }
    } else if ($_GET["node"] == 'delete') {
        $id = (int) $_GET['id'];
        $Ctrl = new CTRL_Terms();
        $Ctrl->setTermId($id);

        if (termDelById($Ctrl)) {
            echo 1;
        } else {
            echo 0;
        }
    }
}

function saveTree($nodes) {
    $term_type = $_GET['term_type'] ? $_GET['term_type'] : 'category';

    $num = count($nodes);
    foreach ($nodes as $key => $value) {
        $Ctrl = new CTRL_Terms();
        $FieldsArr = array();
        $FieldsArr[$Ctrl->_TermIdField()] = $value->id;
        $FieldsArr[$Ctrl->_TermParentIdField()] = (int) $value->pId;
        $FieldsArr[$Ctrl->_TermNameField()] = $value->name;
        $FieldsArr[$Ctrl->_TermOrderField()] = $num - $key;
        if (strpos($term_type, 'site_caidan') !== false) {
            $FieldsArr[$Ctrl->_TermExAttrField()] = $value->url;
        }


        termEditFields($FieldsArr);
        if (isset($value->children)) {
            saveTree($value->children);
        }
    }
}
