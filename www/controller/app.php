<?php

!defined('APPPATH') && exit();
// $data = json_decode($GLOBALS['HTTP_RAW_POST_DATA']);

global $search;

$callback = $_REQUEST['callback'] ? $_REQUEST['callback'] : '';

$md = json_decode($_REQUEST['md']);
$Req = array();
foreach ($md as $key => $value) {
    $Req[str_to_CamelCase_big($key)] = $value;
}

if ($md->req == 'detail') {
    $Ctrl = new CTRL_Posts();
    $Ctrl->set($Req);
    $data = array();
    $data['req'] = 'detail';

    if ($Ctrl->getPostId() != 0 || $Ctrl->getPostAlias() != '') {
        $rs = $Ctrl->selectDB();
//        echo $Ctrl->lastsql();
//        var_dump($rs);
//        echo $Ctrl->lastsql();
        if (is_array($rs) && count($rs) > 0) {
            foreach ($rs as $key => $value) {
                $rs[$key]['post_date'] = substr($value['post_date'], 0, 10);
                if ($value['post_image'] != '') {
                    $rs[$key]['post_image'] = "http://" . $_SERVER["HTTP_HOST"] . $value['post_image'];
                }
                if ($value['post_key1'] != '') {
                    $rs[$key]['post_key1'] = "http://" . $_SERVER["HTTP_HOST"] . $value['post_key1'];
                }
                if ($value['post_key2'] != '') {
                    $rs[$key]['post_key2'] = "http://" . $_SERVER["HTTP_HOST"] . $value['post_key2'];
                }
            }
            $data['data'] = $rs;
        } else {
            $data['data'] = -1;
        }
    } else {
        $data['data'] = -1;
    }
} elseif ($md->req == 'list') {

    $data = array();
    $data['req'] = 'list';

    $Ctrl = new CTRL_Posts();
    $Ctrl->set($Req);

    if ($Ctrl->getPostType() != '') {

        $where = '';

        if ($Ctrl->getPostId() != '') {
            $where .= ' and posts.post_id like ' . "'" . $Ctrl->getPostId() . "' ";
        }

        if ($Ctrl->getPostTitle() != '') {
            $where = ' and posts.post_title like ' . "'%" . str_encode($Ctrl->getPostTitle()) . "%'";
        }
        if ($Ctrl->getPostCategory() != '') {
            $where = ' and posts.post_category like ' . "'" . str_encode($Ctrl->getPostCategory()) . "'";
        }


        $join = '';
        foreach ($search['Dict'] as $key => $value) {
            if ($value > 0) {
                $key = 'dict_' . $key;
                $join .= ' JOIN  ' . PREFIX . 'relationships as ' . $key . ' ON ' . $key . '.object_id = posts.post_id AND ' . $key . '.term_id = ' . $value . ' ';
            }
        }

        $table = $Ctrl->tableName . ' as posts ' . $join;

        $rs = $Ctrl->selectArrayLimit($table, "count(1) len", ' where posts.post_type =\'' . $Ctrl->getPostType() . '\'' . $where, 1, 0);
        if (isset($rs[0]["len"])) {
            $search['dcount'] = $rs[0]["len"];
        }

        $where .= ' order by post_order desc, post_id desc ';
        $rs = $Ctrl->selectArrayLimit($table, "*", ' where posts.post_type =\'' . $Ctrl->getPostType() . '\'' . $where, $search['pagelen'], $search['start']);

//        echo $Ctrl->lastsql();
        if (is_array($rs) && count($rs) > 0) {
            foreach ($rs as $key => $value) {
                $rs[$key]['post_date'] = substr($value['post_date'], 0, 10);
                $rs[$key]['post_date'] = substr($value['post_date'], 0, 10);
                if ($value['post_image'] != '') {
                    $rs[$key]['post_image'] = "http://" . $_SERVER["HTTP_HOST"] . $value['post_image'];
                }
                if ($value['post_key1'] != '') {
                    $rs[$key]['post_key1'] = "http://" . $_SERVER["HTTP_HOST"] . $value['post_key1'];
                }
                if ($value['post_key2'] != '') {
                    $rs[$key]['post_key2'] = "http://" . $_SERVER["HTTP_HOST"] . $value['post_key2'];
                }
            }
            $data['data'] = $rs;
        } else {
            $data['data'] = -1;
        }
    } else {

        $data['data'] = -1;
    }
}
$data['search'] = $search;
if ($callback != '') {
    echo $callback . '(' . json_encode($data) . ')';
} else {
    echo json_encode($data);
}

