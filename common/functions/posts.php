<?php
!defined('APPPATH') && exit();
/**
 * 查询分类的列表
 * @param type $Ctrl 数据库的操作控制类
 * @param type $limit 查询数量
 * @param type $start 偏移量
 * @param type $ExArr 查询的附件数组
 * @return type 返回的DB_XpjcPosts类的数组
 */
function posts_list($Ctrl, $limit, $start, $ExArr) {
//    $Ctrl = new CTRL_Posts();
//    $Ctrl->setPostType('post');
    $where = '';
    if ($Ctrl->getPostTitle() != '') {
        $where = ' and post_title like ' . "'%{$Ctrl->getPostTitle()}%'";
    }
    if ($Ctrl->getPostStatus() != '') {
        $where .= ' and post_status = ' . "'{$Ctrl->getPostStatus()}'";
    }
    if ($Ctrl->getPostAlias() != '') {
        $where .= ' and post_alias like ' . "'%{$Ctrl->getPostAlias()}%'";
    }

    if ($Ctrl->getPostKey3() != '') {
        $where .= ' and post_key3 like ' . "'%{$Ctrl->getPostKey3()}%'";
    }
    $where .= $ExArr;
    $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, "*", ' where post_type =\'' . $Ctrl->getPostType() . '\'' . $where, $limit, $start);
//    echo $Ctrl->lastsql();
    $rsdata = array();
    foreach ($rs as $value) {
        $Ctrl->_arr_toDb($value);
        $rsdata[] = clone $Ctrl->db_model; //克隆一个         
    }
    return $rsdata;
}

/**
 * 添加扩展的字段
 */
function posts_add_exattr($post_id, $exAttr, $parent = 0) {
    $Ctrl = new CTRL_PostsExAttr();
    // 不删除 评论
    $sql = "delete  from " . PREFIX . "posts_ex_attr where  post_ex_attr_key<> 'post_comment' and post_id=" . (int) $post_id . " ";
    $Ctrl->execute($sql);
    $data = unserialize($exAttr);

    $parent = (int) $parent;
    foreach ($data as $key => $value) {
        $id = djy_oid('post_id' . $post_id);

        if (is_array($value)) {
            $value = serialize($value);
        }
        $sql = "insert into " . PREFIX . "posts_ex_attr(id,post_id,post_ex_attr_key,post_ex_attr_value,ex_attr_parent)" .
                " values( " . $id . "," . (int) $post_id . ",'" . $key . "','" . $value . "'," . $parent . ")";
//        echo $sql . '<br />';
//        var_dump($value);
        $Ctrl->execute($sql);
    }
}

/**
 * 通过分类得到相应的post列表
 * @param type $data
 */
function posts_list_bycategory($data = array()) {
//    $data['post_type']
    $data['pagelen'] = $data['pagelen'] ? $data['pagelen'] : 10;
    $Ctrl = new CTRL_Posts();
    $where = "";
    if (isset($data['post_type'])) {
        $where .= ' and post_type like ' . "'" . $data['post_type'] . "' ";
    }
    $join = '';
    foreach ($data['Dict'] as $key => $value) {
        if ($value > 0) {
            $key = 'dict_' . $key;
            $join .= ' JOIN relationships as ' . $key . ' ON ' . $key . '.object_id = posts.post_id AND ' . $key . '.term_id = ' . $value . ' ';
        }
    }
    $table = $Ctrl->tableName . ' as posts ' . $join;
    $where .= ' order by post_id desc ';
    $rs = $Ctrl->selectArrayLimit($table, " posts.* ", ' where  1=1 ' . $where, $data['pagelen'], (int) $data['start']);
//    echo $Ctrl->lastsql();
    $rsdata = array();
    foreach ($rs as $value) {
        $Ctrl->_arr_toDb($value);
        $rsdata[] = clone $Ctrl->db_model; //克隆一个         
    }
    return $rsdata;
}

function posts_get($data = array()) {
    $Ctrl = new CTRL_Posts();
    $where = "";
    if (isset($data['post_type'])) {
        $where .= ' and post_type like ' . "'" . $data['post_type'] . "' ";
    }
}
