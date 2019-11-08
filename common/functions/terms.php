<?php
!defined('APPPATH') && exit();
/**
 * 显示分类选择器
 * @param type $Ctrl 上一级id 或者一个对象
 * @param type $selvalue 当前选择值
 * @param type $field 名称
 * @param type $returntype 返回类型
 * @param type $outdefaut 是否显示请选择
 * @return string
 */
function terms_draw($Ctrl, $selvalue, $field, $returntype = "select", $outdefaut = true) {
    $where = '';
    if (is_object($Ctrl)) {
//        $Ctrl = $pid;
//        $Ctrl = new CTRL_Terms();
//        $Ctrl->setTermAlias('type_dict');
//        $Ctrl->setTermParentId(0);
        $where .= " term_parent_id='" . (int) $Ctrl->getTermParentId() . "' ";
        if ($Ctrl->getTermAlias()) {
            $where .= " and term_alias='{$Ctrl->getTermAlias()}' ";
        }
        if ($Ctrl->getTermType()) {
            $where .= " and term_type='{$Ctrl->getTermType()}' ";
        }
    } else {
        $where .= " term_parent_id='" . (int) $Ctrl . "' ";
    }

    $where .= ' order by term_order ';
    $Ctrl = new CTRL_Terms();
    $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, " * ", " where  " . $where, 1000);
//     echo $Ctrl->lastSql();
    $str = '';
    if ($returntype == 'select') {
        $str .= '<select vname="" name="' . $field . '" class="terms data select ' . $field . '" >';
        if ($outdefaut) {
            $str .= '<option value="0">请选择</option>';
        }
        if (is_array($selvalue)) {
            $selvalue = $selvalue['term_id'];
        }
        foreach ($rs as $value) {
//            var_dump($selvalue);
            if ($selvalue == $value['term_id']) {
                $str .= '<option value="' . $value['term_id'] . '" selected="selected" >' . $value['term_name'] . '</option>';
            } else {
                $str .= '<option value="' . $value['term_id'] . '">' . $value['term_name'] . '</option>';
            }
        }
        $str .= '</select>';
    } else if ($returntype == 'value') {
        if (is_array($selvalue)) {
            $selvalue = $selvalue['term_id'];
        }
        foreach ($rs as $value) {
//            var_dump($selvalue);
            if ($selvalue == $value['term_id']) {
                $str .= $value['term_name'];
            }
        }
    } else if ($returntype == 'array') {
        return $rs;
    }
    return $str;
}

/**
 * 得到当前当前的所有分类信息
 * @param type $post_id 当前id
 * @return type 分类的信息
 */
function terms_get_post_category($post_id) {
    $Ctrl = new CTRL_Terms();
    $rs = $Ctrl->selectArrayLimit(' terms , relationships ', " terms.* ", " WHERE terms.term_id = relationships.term_id AND term_type = 'type_dict' AND relationships.object_id='" . (int) $post_id . "' ", 1000);
    $redata = array();
    foreach ($rs as $value) {
        $redata[$value['term_parent_id']] = $value;
    }
    return $redata;
}

/**
 * 得到当前当前的所有分类信息
 * @param type $post_id 当前id
 * @return type 分类的信息
 */
function terms_get_children($Ctrl, $flag = 'all') {
    if (is_object($Ctrl)) {
        $Ctrlnew = $Ctrl;
        $rs = $Ctrlnew->selectDB();
    } else if (is_array($Ctrl)) {
        $Ctrlnew = new CTRL_Terms();

        $where = ' where 1=1  ';

        foreach ($Ctrl as $key => $value) {
            $where .= " and {$key} = '{$value}' ";
        }

        $where .= ' order by term_order desc ,term_id desc ';
        $rs = $Ctrlnew->selectArrayLimit($Ctrlnew->tableName, " * ", $where, 100, 0);
    } else {
        $Ctrlnew = new CTRL_Terms();
        $where = ' where term_parent_id like ' . "'" . (int) $Ctrl . "'";
        $where .= ' order by term_order desc ,term_id desc ';
        $rs = $Ctrlnew->selectArrayLimit($Ctrlnew->tableName, " * ", $where, 100, 0);
    }

    // echo $Ctrlnew->lastsql();
    $redata = array();
    foreach ($rs as $value) {
        if ($flag == 'all') {
            $redata[$value['term_id']] = $value;
        } else {
            $redata[$value['term_id']] = $value['term_name'];
        }
    }
    return $redata;
}

/**
 * 得到当前当前的所有分类信息
 * @param type $post_id 当前id
 * @return type 分类的信息
 */
function terms_get_parent($Ctrl, $flag = 'all') {
    if (is_object($Ctrl)) {
        $Ctrlnew = $Ctrl;
        $rs = $Ctrlnew->selectDB();
    } else if (is_array($Ctrl)) {
        $Ctrlnew = new CTRL_Terms();

        $where = ' where 1=1  ';

        foreach ($Ctrl as $key => $value) {
            $where .= " and {$key} = '{$value}' ";
        }

        $where .= ' order by term_order desc ,term_id desc ';
        $rs = $Ctrlnew->selectArrayLimit($Ctrlnew->tableName, " * ", $where, 100, 0);
    } else {
        $Ctrlnew = new CTRL_Terms();
        $where = ' where term_id like ' . "'" . (int) $Ctrl . "'";
        $where .= ' order by term_order desc ,term_id desc ';
        $rs = $Ctrlnew->selectArrayLimit($Ctrlnew->tableName, " * ", $where, 100, 0);
    }

    // echo $Ctrlnew->lastsql();
    $redata = array();
    foreach ($rs as $value) {
        if ($flag == 'all') {
            $redata[$value['term_id']] = $value;
        } else {
            $redata[$value['term_id']] = $value['term_name'];
        }
    }
    return $redata;
}
